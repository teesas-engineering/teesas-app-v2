import '../model/subscription.dart';

class SubscriptionCheckoutItem {
  SubscriptionCheckoutItem({
    required this.id,
    required this.title,
    required this.planDuration,
    required this.categoryTag,
    required this.amount,
  });

  final String id;
  final String title;
  final String planDuration;
  final String categoryTag;
  final double amount;

  Subscription toSubscription() {
    return Subscription(
      id: id,
      planName: planDuration,
      startDate: '', // Not used in summary view
      endDate: '', // Not used in summary view
      amount: amount,
      status: SubscriptionStatus.active, // Default/Mock for summary
      category: categoryTag,
      subCategory: title,
    );
  }
}
