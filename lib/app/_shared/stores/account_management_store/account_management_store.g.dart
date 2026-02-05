// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_management_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AccountManagementStore on _AccountManagementStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??= Computed<bool>(
    () => super.isLoading,
    name: '_AccountManagementStoreBase.isLoading',
  )).value;

  late final _$statusAtom = Atom(
    name: '_AccountManagementStoreBase.status',
    context: context,
  );

  @override
  Status get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(Status value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_AccountManagementStoreBase.errorMessage',
    context: context,
  );

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$pendingAccountsAtom = Atom(
    name: '_AccountManagementStoreBase.pendingAccounts',
    context: context,
  );

  @override
  ObservableList<AddAccountItemDto> get pendingAccounts {
    _$pendingAccountsAtom.reportRead();
    return super.pendingAccounts;
  }

  @override
  set pendingAccounts(ObservableList<AddAccountItemDto> value) {
    _$pendingAccountsAtom.reportWrite(value, super.pendingAccounts, () {
      super.pendingAccounts = value;
    });
  }

  late final _$selectedAccountAtom = Atom(
    name: '_AccountManagementStoreBase.selectedAccount',
    context: context,
  );

  @override
  AddAccountItemDto? get selectedAccount {
    _$selectedAccountAtom.reportRead();
    return super.selectedAccount;
  }

  @override
  set selectedAccount(AddAccountItemDto? value) {
    _$selectedAccountAtom.reportWrite(value, super.selectedAccount, () {
      super.selectedAccount = value;
    });
  }

  late final _$userProfilesAtom = Atom(
    name: '_AccountManagementStoreBase.userProfiles',
    context: context,
  );

  @override
  List<UserDto> get userProfiles {
    _$userProfilesAtom.reportRead();
    return super.userProfiles;
  }

  @override
  set userProfiles(List<UserDto> value) {
    _$userProfilesAtom.reportWrite(value, super.userProfiles, () {
      super.userProfiles = value;
    });
  }

  late final _$selectedCountryAtom = Atom(
    name: '_AccountManagementStoreBase.selectedCountry',
    context: context,
  );

  @override
  CountryDto? get selectedCountry {
    _$selectedCountryAtom.reportRead();
    return super.selectedCountry;
  }

  @override
  set selectedCountry(CountryDto? value) {
    _$selectedCountryAtom.reportWrite(value, super.selectedCountry, () {
      super.selectedCountry = value;
    });
  }

  late final _$userActionAtom = Atom(
    name: '_AccountManagementStoreBase.userAction',
    context: context,
  );

  @override
  AccountManagementAction get userAction {
    _$userActionAtom.reportRead();
    return super.userAction;
  }

  @override
  set userAction(AccountManagementAction value) {
    _$userActionAtom.reportWrite(value, super.userAction, () {
      super.userAction = value;
    });
  }

  late final _$selectedAccountIndexAtom = Atom(
    name: '_AccountManagementStoreBase.selectedAccountIndex',
    context: context,
  );

  @override
  int? get selectedAccountIndex {
    _$selectedAccountIndexAtom.reportRead();
    return super.selectedAccountIndex;
  }

  @override
  set selectedAccountIndex(int? value) {
    _$selectedAccountIndexAtom.reportWrite(
      value,
      super.selectedAccountIndex,
      () {
        super.selectedAccountIndex = value;
      },
    );
  }

  late final _$selectedGenderAtom = Atom(
    name: '_AccountManagementStoreBase.selectedGender',
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
    name: '_AccountManagementStoreBase.selectedDate',
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

  late final _$saveAndContinueAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.saveAndContinue',
    context: context,
  );

  @override
  Future<void> saveAndContinue() {
    return _$saveAndContinueAsyncAction.run(() => super.saveAndContinue());
  }

  late final _$saveAccountAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.saveAccount',
    context: context,
  );

  @override
  Future<void> saveAccount(ObservableMap<int, List<int>?> selections) {
    return _$saveAccountAsyncAction.run(() => super.saveAccount(selections));
  }

  late final _$submitAccountsAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.submitAccounts',
    context: context,
  );

  @override
  Future<void> submitAccounts() {
    return _$submitAccountsAsyncAction.run(() => super.submitAccounts());
  }

  late final _$switchProfileAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.switchProfile',
    context: context,
  );

  @override
  Future<void> switchProfile(SwitchProfileDto dto) {
    return _$switchProfileAsyncAction.run(() => super.switchProfile(dto));
  }

  late final _$loadUserProfilesAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.loadUserProfiles',
    context: context,
  );

  @override
  Future<void> loadUserProfiles() {
    return _$loadUserProfilesAsyncAction.run(() => super.loadUserProfiles());
  }

  late final _$addUserCourseAsyncAction = AsyncAction(
    '_AccountManagementStoreBase.addUserCourse',
    context: context,
  );

  @override
  Future<void> addUserCourse(AddUserCourseRequestDto dto) {
    return _$addUserCourseAsyncAction.run(() => super.addUserCourse(dto));
  }

  late final _$_AccountManagementStoreBaseActionController = ActionController(
    name: '_AccountManagementStoreBase',
    context: context,
  );

  @override
  void init({
    AccountManagementAction userAction = AccountManagementAction.initial,
  }) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.init');
    try {
      return super.init(userAction: userAction);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAccountFromPending(int index) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(
          name: '_AccountManagementStoreBase.removeAccountFromPending',
        );
    try {
      return super.removeAccountFromPending(index);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateAccountInPending({
    required AddAccountItemDto account,
    required int index,
  }) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(
          name: '_AccountManagementStoreBase.updateAccountInPending',
        );
    try {
      return super.updateAccountInPending(account: account, index: index);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editAccount(AddAccountItemDto item, int index) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.editAccount');
    try {
      return super.editAccount(item, index);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetStatus() {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.resetStatus');
    try {
      return super.resetStatus();
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCategoryForUser(AddAccountItemDto account) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.selectCategoryForUser');
    try {
      return super.selectCategoryForUser(account);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveCoursesForSelectedAccount(List<AddAccountCourseDto> courses) {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(
          name: '_AccountManagementStoreBase.saveCoursesForSelectedAccount',
        );
    try {
      return super.saveCoursesForSelectedAccount(courses);
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAnotherUser() {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.addAnotherUser');
    try {
      return super.addAnotherUser();
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearForm() {
    final _$actionInfo = _$_AccountManagementStoreBaseActionController
        .startAction(name: '_AccountManagementStoreBase.clearForm');
    try {
      return super.clearForm();
    } finally {
      _$_AccountManagementStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
errorMessage: ${errorMessage},
pendingAccounts: ${pendingAccounts},
selectedAccount: ${selectedAccount},
userProfiles: ${userProfiles},
selectedCountry: ${selectedCountry},
userAction: ${userAction},
selectedAccountIndex: ${selectedAccountIndex},
selectedGender: ${selectedGender},
selectedDate: ${selectedDate},
isLoading: ${isLoading}
    ''';
  }
}
