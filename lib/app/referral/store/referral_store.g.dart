// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReferralStore on _ReferralStore, Store {
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

  @override
  String toString() {
    return '''
referralCode: ${referralCode},
totalEarnings: ${totalEarnings},
currentEarnings: ${currentEarnings},
totalWithdrawal: ${totalWithdrawal}
    ''';
  }
}
