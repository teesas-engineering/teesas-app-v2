// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??= Computed<bool>(
    () => super.isLoading,
    name: '_LoginStoreBase.isLoading',
  )).value;

  late final _$loginStatusAtom = Atom(
    name: '_LoginStoreBase.loginStatus',
    context: context,
  );

  @override
  Status get loginStatus {
    _$loginStatusAtom.reportRead();
    return super.loginStatus;
  }

  @override
  set loginStatus(Status value) {
    _$loginStatusAtom.reportWrite(value, super.loginStatus, () {
      super.loginStatus = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_LoginStoreBase.errorMessage',
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

  late final _$userAtom = Atom(name: '_LoginStoreBase.user', context: context);

  @override
  UserDto? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserDto? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$profilesAtom = Atom(
    name: '_LoginStoreBase.profiles',
    context: context,
  );

  @override
  ObservableList<UserProfileDto> get profiles {
    _$profilesAtom.reportRead();
    return super.profiles;
  }

  @override
  set profiles(ObservableList<UserProfileDto> value) {
    _$profilesAtom.reportWrite(value, super.profiles, () {
      super.profiles = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction(
    '_LoginStoreBase.login',
    context: context,
  );

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginStoreBaseActionController = ActionController(
    name: '_LoginStoreBase',
    context: context,
  );

  @override
  void selectProfile(UserProfileDto profile) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
      name: '_LoginStoreBase.selectProfile',
    );
    try {
      return super.selectProfile(profile);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetStatus() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
      name: '_LoginStoreBase.resetStatus',
    );
    try {
      return super.resetStatus();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginStatus: ${loginStatus},
errorMessage: ${errorMessage},
user: ${user},
profiles: ${profiles},
isLoading: ${isLoading}
    ''';
  }
}
