enum ReferralStatus { registered, subscribed }

class ReferralInvitee {
  const ReferralInvitee({
    required this.id,
    required this.name,
    required this.date,
    required this.amountEarned,
    required this.status,
  });

  final String id;
  final String name;
  final String date;
  final double amountEarned;
  final ReferralStatus status;
}
