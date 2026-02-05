import 'package:mobx/mobx.dart';
import '../data/model/subscription_checkout_item.dart';

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

class AddSubscriptionStore = _AddSubscriptionStore with _$AddSubscriptionStore;

abstract class _AddSubscriptionStore with Store {
  @observable
  ObservableMap<String, String> selectedPlanIds =
      ObservableMap<String, String>();

  // Mock data
  final List<SubscriptionGroup> groups = [
    SubscriptionGroup(
      id: 'g1',
      categoryTag: 'Primary',
      title: 'Grade 1',
      options: [
        SubscriptionOption(
          id: 'p1_1',
          duration: '1 Month Subscriptions',
          amount: 12000,
        ),
        SubscriptionOption(
          id: 'p1_3',
          duration: '3 Months Subscriptions',
          amount: 12000,
        ),
        SubscriptionOption(
          id: 'p1_12',
          duration: '1 Year Subscriptions',
          amount: 12000,
        ),
      ],
    ),
    SubscriptionGroup(
      id: 'g2',
      categoryTag: 'Leader In Me',
      title: '7 Habits of a Parent',
      options: [
        SubscriptionOption(
          id: 'p2_1',
          duration: '1 Month Subscriptions',
          amount: 5000,
        ),
        SubscriptionOption(
          id: 'p2_3',
          duration: '3 Months Subscriptions',
          amount: 14000,
        ),
      ],
    ),
  ];

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
