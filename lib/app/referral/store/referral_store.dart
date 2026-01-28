import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'referral_store.g.dart';

@injectable
class ReferralStore = _ReferralStore with _$ReferralStore;

abstract class _ReferralStore with Store {
  @observable
  String referralCode = 'OJUY\$%TE';

  @observable
  double totalEarnings = 20000;

  @observable
  double currentEarnings = 10000;

  @observable
  double totalWithdrawal = 10000;

  @action
  Future<void> copyReferralCode() async {
    // Logic to copy to clipboard (handled in UI usually or via service)
  }

  @action
  Future<void> inviteFriend() async {
    // Logic to share
  }
}
