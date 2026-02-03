// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReferralStore on _ReferralStore, Store {
  Computed<List<ReferralInvitee>>? _$filteredInviteesComputed;

  @override
  List<ReferralInvitee> get filteredInvitees =>
      (_$filteredInviteesComputed ??= Computed<List<ReferralInvitee>>(
        () => super.filteredInvitees,
        name: '_ReferralStore.filteredInvitees',
      )).value;
  Computed<bool>? _$canWithdrawComputed;

  @override
  bool get canWithdraw => (_$canWithdrawComputed ??= Computed<bool>(
    () => super.canWithdraw,
    name: '_ReferralStore.canWithdraw',
  )).value;

  late final _$referralCodeAtom = Atom(
    name: '_ReferralStore.referralCode',
    context: context,
  );

  @override
  String get referralCode {
    _$referralCodeAtom.reportRead();
    return super.referralCode;
  }

  @override
  set referralCode(String value) {
    _$referralCodeAtom.reportWrite(value, super.referralCode, () {
      super.referralCode = value;
    });
  }

  late final _$totalEarningsAtom = Atom(
    name: '_ReferralStore.totalEarnings',
    context: context,
  );

  @override
  double get totalEarnings {
    _$totalEarningsAtom.reportRead();
    return super.totalEarnings;
  }

  @override
  set totalEarnings(double value) {
    _$totalEarningsAtom.reportWrite(value, super.totalEarnings, () {
      super.totalEarnings = value;
    });
  }

  late final _$currentEarningsAtom = Atom(
    name: '_ReferralStore.currentEarnings',
    context: context,
  );

  @override
  double get currentEarnings {
    _$currentEarningsAtom.reportRead();
    return super.currentEarnings;
  }

  @override
  set currentEarnings(double value) {
    _$currentEarningsAtom.reportWrite(value, super.currentEarnings, () {
      super.currentEarnings = value;
    });
  }

  late final _$totalWithdrawalAtom = Atom(
    name: '_ReferralStore.totalWithdrawal',
    context: context,
  );

  @override
  double get totalWithdrawal {
    _$totalWithdrawalAtom.reportRead();
    return super.totalWithdrawal;
  }

  @override
  set totalWithdrawal(double value) {
    _$totalWithdrawalAtom.reportWrite(value, super.totalWithdrawal, () {
      super.totalWithdrawal = value;
    });
  }

  late final _$inviteesAtom = Atom(
    name: '_ReferralStore.invitees',
    context: context,
  );

  @override
  ObservableList<ReferralInvitee> get invitees {
    _$inviteesAtom.reportRead();
    return super.invitees;
  }

  @override
  set invitees(ObservableList<ReferralInvitee> value) {
    _$inviteesAtom.reportWrite(value, super.invitees, () {
      super.invitees = value;
    });
  }

  late final _$searchQueryAtom = Atom(
    name: '_ReferralStore.searchQuery',
    context: context,
  );

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$withdrawAccountNumberAtom = Atom(
    name: '_ReferralStore.withdrawAccountNumber',
    context: context,
  );

  @override
  String get withdrawAccountNumber {
    _$withdrawAccountNumberAtom.reportRead();
    return super.withdrawAccountNumber;
  }

  @override
  set withdrawAccountNumber(String value) {
    _$withdrawAccountNumberAtom.reportWrite(
      value,
      super.withdrawAccountNumber,
      () {
        super.withdrawAccountNumber = value;
      },
    );
  }

  late final _$withdrawBankNameAtom = Atom(
    name: '_ReferralStore.withdrawBankName',
    context: context,
  );

  @override
  String get withdrawBankName {
    _$withdrawBankNameAtom.reportRead();
    return super.withdrawBankName;
  }

  @override
  set withdrawBankName(String value) {
    _$withdrawBankNameAtom.reportWrite(value, super.withdrawBankName, () {
      super.withdrawBankName = value;
    });
  }

  late final _$withdrawAccountNameAtom = Atom(
    name: '_ReferralStore.withdrawAccountName',
    context: context,
  );

  @override
  String get withdrawAccountName {
    _$withdrawAccountNameAtom.reportRead();
    return super.withdrawAccountName;
  }

  @override
  set withdrawAccountName(String value) {
    _$withdrawAccountNameAtom.reportWrite(value, super.withdrawAccountName, () {
      super.withdrawAccountName = value;
    });
  }

  late final _$copyReferralCodeAsyncAction = AsyncAction(
    '_ReferralStore.copyReferralCode',
    context: context,
  );

  @override
  Future<void> copyReferralCode() {
    return _$copyReferralCodeAsyncAction.run(() => super.copyReferralCode());
  }

  late final _$inviteFriendAsyncAction = AsyncAction(
    '_ReferralStore.inviteFriend',
    context: context,
  );

  @override
  Future<void> inviteFriend() {
    return _$inviteFriendAsyncAction.run(() => super.inviteFriend());
  }

  late final _$withdrawEarningsAsyncAction = AsyncAction(
    '_ReferralStore.withdrawEarnings',
    context: context,
  );

  @override
  Future<void> withdrawEarnings() {
    return _$withdrawEarningsAsyncAction.run(() => super.withdrawEarnings());
  }

  late final _$_ReferralStoreActionController = ActionController(
    name: '_ReferralStore',
    context: context,
  );

  @override
  void setSearchQuery(String query) {
    final _$actionInfo = _$_ReferralStoreActionController.startAction(
      name: '_ReferralStore.setSearchQuery',
    );
    try {
      return super.setSearchQuery(query);
    } finally {
      _$_ReferralStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWithdrawAccountNumber(String value) {
    final _$actionInfo = _$_ReferralStoreActionController.startAction(
      name: '_ReferralStore.setWithdrawAccountNumber',
    );
    try {
      return super.setWithdrawAccountNumber(value);
    } finally {
      _$_ReferralStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWithdrawBankName(String? value) {
    final _$actionInfo = _$_ReferralStoreActionController.startAction(
      name: '_ReferralStore.setWithdrawBankName',
    );
    try {
      return super.setWithdrawBankName(value);
    } finally {
      _$_ReferralStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
referralCode: ${referralCode},
totalEarnings: ${totalEarnings},
currentEarnings: ${currentEarnings},
totalWithdrawal: ${totalWithdrawal},
invitees: ${invitees},
searchQuery: ${searchQuery},
withdrawAccountNumber: ${withdrawAccountNumber},
withdrawBankName: ${withdrawBankName},
withdrawAccountName: ${withdrawAccountName},
filteredInvitees: ${filteredInvitees},
canWithdraw: ${canWithdraw}
    ''';
  }
}
