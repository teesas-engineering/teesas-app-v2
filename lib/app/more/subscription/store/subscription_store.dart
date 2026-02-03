import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../data/model/subscription.dart';

part 'subscription_store.g.dart';

@injectable
class SubscriptionStore = _SubscriptionStore with _$SubscriptionStore;

abstract class _SubscriptionStore with Store {
  @observable
  ObservableList<Subscription> activeSubscriptions = ObservableList.of([]);

  @observable
  ObservableList<Subscription> subscriptionHistory = ObservableList.of([]);

  @computed
  bool get hasActiveSubscription => activeSubscriptions.isNotEmpty;

  @computed
  bool get hasSubscriptionHistory => subscriptionHistory.isNotEmpty;

  @action
  Future<void> addSubscription() async {
    // TODO: Implement subscription addition logic
    await Future.delayed(const Duration(seconds: 1));
  }

  @action
  Future<void> loadSubscriptions() async {
    // Mocking active subscriptions
    activeSubscriptions = ObservableList.of([
      const Subscription(
        id: '1',
        planName: '3 Months Subscriptions',
        startDate: '2023-10-01',
        endDate: '2024-01-01',
        amount: 12000,
        status: SubscriptionStatus.active,
        category: 'Primary',
        subCategory: 'Grade 1',
      ),
      const Subscription(
        id: '2',
        planName: '3 Months Subscriptions',
        startDate: '2023-10-01',
        endDate: '2024-01-01',
        amount: 5000,
        status: SubscriptionStatus.active,
        category: 'Leader In Me',
        subCategory: '7 habits of Parents',
      ),
      const Subscription(
        id: '3',
        planName: '3 Months Subscriptions',
        startDate: '2023-10-01',
        endDate: '2024-01-01',
        amount: 12000,
        status: SubscriptionStatus.active,
        category: 'Primary',
        subCategory: 'Grade 2',
      ),
    ]);

    // Mocking history
    subscriptionHistory = ObservableList.of([
      const Subscription(
        id: '4',
        planName: '3 Months Subscriptions',
        startDate: '2020-09-25',
        endDate: '2020-12-25',
        amount: 12000,
        status: SubscriptionStatus.expired,
        category: 'Leader In Me',
        subCategory: '7 habits of Parents',
      ),
      const Subscription(
        id: '5',
        planName: '3 Months Subscriptions',
        startDate: '2020-09-25',
        endDate: '2020-12-25',
        amount: 12000,
        status: SubscriptionStatus.expired,
        category: 'Primary',
        subCategory: 'Grade 1',
      ),
    ]);
  }
}
