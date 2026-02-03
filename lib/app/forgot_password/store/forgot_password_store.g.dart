// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ForgotPasswordStore on _ForgotPasswordStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??= Computed<bool>(
    () => super.isLoading,
    name: '_ForgotPasswordStoreBase.isLoading',
  )).value;

  late final _$statusAtom = Atom(
    name: '_ForgotPasswordStoreBase.status',
    context: context,
  );

  @override
  ForgotPasswordStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ForgotPasswordStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_ForgotPasswordStoreBase.errorMessage',
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

  late final _$submitForgotPasswordAsyncAction = AsyncAction(
    '_ForgotPasswordStoreBase.submitForgotPassword',
    context: context,
  );

  @override
  Future<void> submitForgotPassword() {
    return _$submitForgotPasswordAsyncAction.run(
      () => super.submitForgotPassword(),
    );
  }

  late final _$_ForgotPasswordStoreBaseActionController = ActionController(
    name: '_ForgotPasswordStoreBase',
    context: context,
  );

  @override
  void resetStatus() {
    final _$actionInfo = _$_ForgotPasswordStoreBaseActionController.startAction(
      name: '_ForgotPasswordStoreBase.resetStatus',
    );
    try {
      return super.resetStatus();
    } finally {
      _$_ForgotPasswordStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
errorMessage: ${errorMessage},
isLoading: ${isLoading}
    ''';
  }
}
