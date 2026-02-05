// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OtpStore on _OtpStoreBase, Store {
  late final _$verifyOtpStatusAtom = Atom(
    name: '_OtpStoreBase.verifyOtpStatus',
    context: context,
  );

  @override
  Status get verifyOtpStatus {
    _$verifyOtpStatusAtom.reportRead();
    return super.verifyOtpStatus;
  }

  @override
  set verifyOtpStatus(Status value) {
    _$verifyOtpStatusAtom.reportWrite(value, super.verifyOtpStatus, () {
      super.verifyOtpStatus = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_OtpStoreBase.errorMessage',
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

  late final _$isForgotPasswordAtom = Atom(
    name: '_OtpStoreBase.isForgotPassword',
    context: context,
  );

  @override
  bool get isForgotPassword {
    _$isForgotPasswordAtom.reportRead();
    return super.isForgotPassword;
  }

  @override
  set isForgotPassword(bool value) {
    _$isForgotPasswordAtom.reportWrite(value, super.isForgotPassword, () {
      super.isForgotPassword = value;
    });
  }

  late final _$emailAtom = Atom(name: '_OtpStoreBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$phoneNumberAtom = Atom(
    name: '_OtpStoreBase.phoneNumber',
    context: context,
  );

  @override
  String get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$sendOtpAsyncAction = AsyncAction(
    '_OtpStoreBase.sendOtp',
    context: context,
  );

  @override
  Future<void> sendOtp(SendOtpDto dto) {
    return _$sendOtpAsyncAction.run(() => super.sendOtp(dto));
  }

  late final _$resendOtpAsyncAction = AsyncAction(
    '_OtpStoreBase.resendOtp',
    context: context,
  );

  @override
  Future<void> resendOtp() {
    return _$resendOtpAsyncAction.run(() => super.resendOtp());
  }

  late final _$forgotPasswordAsyncAction = AsyncAction(
    '_OtpStoreBase.forgotPassword',
    context: context,
  );

  @override
  Future<void> forgotPassword(ForgotPasswordDto dto) {
    return _$forgotPasswordAsyncAction.run(() => super.forgotPassword(dto));
  }

  late final _$verifyOtpAsyncAction = AsyncAction(
    '_OtpStoreBase.verifyOtp',
    context: context,
  );

  @override
  Future<void> verifyOtp(int otp) {
    return _$verifyOtpAsyncAction.run(() => super.verifyOtp(otp));
  }

  late final _$verifyForgotPasswordAsyncAction = AsyncAction(
    '_OtpStoreBase.verifyForgotPassword',
    context: context,
  );

  @override
  Future<void> verifyForgotPassword(int otp) {
    return _$verifyForgotPasswordAsyncAction.run(
      () => super.verifyForgotPassword(otp),
    );
  }

  late final _$_OtpStoreBaseActionController = ActionController(
    name: '_OtpStoreBase',
    context: context,
  );

  @override
  void submit(String pin) {
    final _$actionInfo = _$_OtpStoreBaseActionController.startAction(
      name: '_OtpStoreBase.submit',
    );
    try {
      return super.submit(pin);
    } finally {
      _$_OtpStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetStatus() {
    final _$actionInfo = _$_OtpStoreBaseActionController.startAction(
      name: '_OtpStoreBase.resetStatus',
    );
    try {
      return super.resetStatus();
    } finally {
      _$_OtpStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
verifyOtpStatus: ${verifyOtpStatus},
errorMessage: ${errorMessage},
isForgotPassword: ${isForgotPassword},
email: ${email},
phoneNumber: ${phoneNumber}
    ''';
  }
}
