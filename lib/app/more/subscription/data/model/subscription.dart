enum SubscriptionStatus { active, expired, cancelled }

class Subscription {
  const Subscription({
    required this.id,
    required this.planName,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.status,
    required this.category,
    this.subCategory,
  });

  final String id;
  final String planName;
  final String startDate;
  final String endDate;
  final double amount;
  final SubscriptionStatus status;
  final String category;
  final String? subCategory;

  int get daysLeft {
    try {
      final end = DateTime.parse(endDate);
      final now = DateTime.now();
      final diff = end.difference(now).inDays;
      return diff > 0 ? diff : 0;
    } catch (_) {
      return 0;
    }
  }

  double get progress {
    try {
      final start = DateTime.parse(startDate);
      final end = DateTime.parse(endDate);
      final now = DateTime.now();
      final total = end.difference(start).inDays;
      final elapsed = now.difference(start).inDays;
      if (total == 0) {
        return 0;
      }
      return (elapsed / total).clamp(0.0, 1.0);
    } catch (_) {
      return 0;
    }
  }
}
