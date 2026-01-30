import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../data/model/referral_invitee.dart';

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

  @observable
  ObservableList<ReferralInvitee> invitees = ObservableList.of([
    const ReferralInvitee(
      id: '1',
      name: 'James Aderibigbe',
      date: '20-10-2023',
      amountEarned: 0,
      status: ReferralStatus.registered,
    ),
    const ReferralInvitee(
      id: '2',
      name: 'James Aderibigbe',
      date: '20-10-2023',
      amountEarned: 200,
      status: ReferralStatus.subscribed,
    ),
    const ReferralInvitee(
      id: '3',
      name: 'James Aderibigbe',
      date: '20-10-2023',
      amountEarned: 1000,
      status: ReferralStatus.subscribed,
    ),
    const ReferralInvitee(
      id: '4',
      name: 'James Aderibigbe',
      date: '20-10-2023',
      amountEarned: 1800,
      status: ReferralStatus.subscribed,
    ),
  ]);

  @observable
  String searchQuery = '';

  @computed
  List<ReferralInvitee> get filteredInvitees {
    if (searchQuery.isEmpty) {
      return invitees;
    }
    return invitees
        .where(
          (element) =>
              element.name.toLowerCase().contains(searchQuery.toLowerCase()),
        )
        .toList();
  }

  @action
  void setSearchQuery(String query) {
    searchQuery = query;
  }

  @action
  Future<void> copyReferralCode() async {}

  @action
  Future<void> inviteFriend() async {}

  @observable
  String withdrawAccountNumber = '';

  @observable
  String withdrawBankName = '';

  @observable
  String withdrawAccountName = 'James Aderibigbe'; // Mocked auto-fill

  @computed
  bool get canWithdraw =>
      withdrawAccountNumber.isNotEmpty && withdrawBankName.isNotEmpty;

  @action
  void setWithdrawAccountNumber(String value) {
    withdrawAccountNumber = value;
  }

  @action
  void setWithdrawBankName(String? value) {
    if (value != null) {
      withdrawBankName = value;
    }
  }

  @action
  Future<void> withdrawEarnings() async {
    // API call simulation
    await Future.delayed(const Duration(seconds: 1));
  }
}
