// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddAccountStore on _AddAccountStore, Store {
  late final _$selectedGenderAtom = Atom(
    name: '_AddAccountStore.selectedGender',
    context: context,
  );

  @override
  Gender? get selectedGender {
    _$selectedGenderAtom.reportRead();
    return super.selectedGender;
  }

  @override
  set selectedGender(Gender? value) {
    _$selectedGenderAtom.reportWrite(value, super.selectedGender, () {
      super.selectedGender = value;
    });
  }

  late final _$selectedDateAtom = Atom(
    name: '_AddAccountStore.selectedDate',
    context: context,
  );

  @override
  DateTime? get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime? value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  late final _$userAccountsAtom = Atom(
    name: '_AddAccountStore.userAccounts',
    context: context,
  );

  @override
  ObservableList<UserAccount> get userAccounts {
    _$userAccountsAtom.reportRead();
    return super.userAccounts;
  }

  @override
  set userAccounts(ObservableList<UserAccount> value) {
    _$userAccountsAtom.reportWrite(value, super.userAccounts, () {
      super.userAccounts = value;
    });
  }

  late final _$_AddAccountStoreActionController = ActionController(
    name: '_AddAccountStore',
    context: context,
  );

  @override
  void setGender(Gender? gender) {
    final _$actionInfo = _$_AddAccountStoreActionController.startAction(
      name: '_AddAccountStore.setGender',
    );
    try {
      return super.setGender(gender);
    } finally {
      _$_AddAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime? date) {
    final _$actionInfo = _$_AddAccountStoreActionController.startAction(
      name: '_AddAccountStore.setDate',
    );
    try {
      return super.setDate(date);
    } finally {
      _$_AddAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserAccount(UserAccount user) {
    final _$actionInfo = _$_AddAccountStoreActionController.startAction(
      name: '_AddAccountStore.addUserAccount',
    );
    try {
      return super.addUserAccount(user);
    } finally {
      _$_AddAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUserAccount(int index) {
    final _$actionInfo = _$_AddAccountStoreActionController.startAction(
      name: '_AddAccountStore.removeUserAccount',
    );
    try {
      return super.removeUserAccount(index);
    } finally {
      _$_AddAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearForm() {
    final _$actionInfo = _$_AddAccountStoreActionController.startAction(
      name: '_AddAccountStore.clearForm',
    );
    try {
      return super.clearForm();
    } finally {
      _$_AddAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedGender: ${selectedGender},
selectedDate: ${selectedDate},
userAccounts: ${userAccounts}
    ''';
  }
}
