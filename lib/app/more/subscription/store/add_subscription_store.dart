import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/notify_helper.dart';
import '../data/model/subscription_checkout_item.dart';
import '../data/repository/subscription_repository.dart';

part 'add_subscription_store.g.dart';

class SubscriptionOption {
  SubscriptionOption({
    required this.id,
    required this.duration,
    required this.amount,
  });

  final String id;
  final String duration;
  final double amount;
}

class SubscriptionGroup {
  SubscriptionGroup({
    required this.id,
    required this.categoryTag,
    required this.title,
    required this.options,
  });

  final String id;
  final String categoryTag;
  final String title;
  final List<SubscriptionOption> options;
}

@lazySingleton
class AddSubscriptionStore = _AddSubscriptionStore with _$AddSubscriptionStore;

abstract class _AddSubscriptionStore with Store {
  _AddSubscriptionStore(this._repository);

  final SubscriptionRepository _repository;

  @observable
  Status status = Status.initial;

  @observable
  String? errorMessage;

  @computed
  bool get isLoading => status == Status.loading;

  @observable
  ObservableMap<String, String> selectedPlanIds =
      ObservableMap<String, String>();

  @observable
  ObservableList<SubscriptionGroup> groups =
      ObservableList<SubscriptionGroup>();

  @action
  Future<void> fetchSubscriptions() async {
    status = Status.loading;
    errorMessage = null;

    final result = await _repository.fetchSubscriptions();

    result.when(
      onSuccess: (data) {
        final newGroups = data.subscriptionList.map((groupDto) {
          return SubscriptionGroup(
            // Generating a unique ID for the group since API doesn't provide one for the group itself
            id: '${groupDto.course}_${groupDto.className}',
            categoryTag: groupDto.course,
            title: groupDto.className,
            options: groupDto.subscription.map((itemDto) {
              return SubscriptionOption(
                id: itemDto.planId,
                duration: itemDto
                    .description, // Or parse 'time' if needed to show "1 Month" etc properly
                amount: itemDto.amount,
              );
            }).toList(),
          );
        }).toList();

        groups = ObservableList.of(newGroups);
        status = Status.success;
      },
      onError: (message) {
        errorMessage = message;
        status = Status.error;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @action
  void selectPlan(String groupId, String planId) {
    selectedPlanIds[groupId] = planId;
  }

  bool isSelected(String groupId, String planId) {
    return selectedPlanIds[groupId] == planId;
  }

  List<SubscriptionCheckoutItem> getSelectedItems() {
    final List<SubscriptionCheckoutItem> items = [];
    selectedPlanIds.forEach((groupId, planId) {
      final group = groups.firstWhere((g) => g.id == groupId);
      final option = group.options.firstWhere((o) => o.id == planId);
      items.add(
        SubscriptionCheckoutItem(
          id: option.id,
          title: group.title,
          planDuration: option.duration,
          categoryTag: group.categoryTag,
          amount: option.amount,
        ),
      );
    });
    return items;
  }
}
