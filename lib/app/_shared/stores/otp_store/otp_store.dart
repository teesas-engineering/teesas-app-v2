import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/services/secured_storage_service.dart';
import '../../../../common/utils/notify_helper.dart';
import '../../data/dto/forgot_password_dto/forgot_password_dto.dart';
import '../../data/dto/send_otp_dto/send_otp_dto.dart';
import '../../data/dto/verify_forgot_password_dto/verify_forgot_password_dto.dart';
import '../../data/dto/verify_otp_dto/verify_otp_dto.dart';
import '../../domain/repository/auth_repository.dart';

part 'otp_store.g.dart';

@lazySingleton
class OtpStore = _OtpStoreBase with _$OtpStore;

abstract class _OtpStoreBase with Store {
  _OtpStoreBase(this._authRepository, this._storageService);

  final AuthRepository _authRepository;
  final SecureStorageService _storageService;

  @observable
  Status verifyOtpStatus = Status.initial;
  @observable
  String? errorMessage;
  @observable
  bool isForgotPassword = false;

  @observable
  String email = '';
  @observable
  String phoneNumber = '';

  @action
  Future<void> sendOtp(SendOtpDto dto) async {
    verifyOtpStatus = Status.initial;
    errorMessage = null;
    isForgotPassword = false;
    phoneNumber = dto.phone ?? '';
    email = dto.email ?? '';
    final result = await _authRepository.sendOtp(dto);
    result.when(
      onSuccess: (_) {
      },
      onError: (message) {
        errorMessage = message;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @action
  void submit(String pin) {
    final otp = int.parse(pin);
    if (isForgotPassword) {
      unawaited(verifyForgotPassword(otp));
    } else {
      unawaited(verifyOtp(otp));
    }
  }

  @action
  Future<void> resendOtp() async {
    if (isForgotPassword) {
      unawaited(forgotPassword(ForgotPasswordDto(phone: phoneNumber)));
    } else {
      unawaited(
        sendOtp(
          SendOtpDto(
            phone: phoneNumber.isNotEmpty ? phoneNumber : null,
            email: email.isNotEmpty ? email : null,
          ),
        ),
      );
    }
    NotifyHelper.showSuccessToast('OTP sent', gravity: ToastGravity.BOTTOM);
  }

  @action
  Future<void> forgotPassword(ForgotPasswordDto dto) async {

    verifyOtpStatus = Status.initial;
    errorMessage = null;
    isForgotPassword = true;
    phoneNumber = dto.phone;
    final result = await _authRepository.forgotPassword(dto);
    result.when(
      onSuccess: (_) {},
      onError: (message) {
        NotifyHelper.showErrorToast(message);
        errorMessage = message;
      },
    );
  }

  @action
  Future<void> verifyOtp(int otp) async {
    final dto = VerifyOtpDto(OTP: otp, phone: phoneNumber, email: email);
    verifyOtpStatus = Status.loading;
    errorMessage = null;
    final result = await _authRepository.verifyOtp(dto);
    result.when(
      onSuccess: (value) {
        unawaited(_storageService.saveUser(value.toJson()));
        verifyOtpStatus = Status.success;
        isForgotPassword = false;
      },
      onError: (message) {
        NotifyHelper.showErrorToast(message);
        errorMessage = message;
        verifyOtpStatus = Status.error;
      },
    );
  }

  @action
  Future<void> verifyForgotPassword(int otp) async {
    final dto = VerifyForgotPasswordDto(phone: phoneNumber, OTP: otp);
    verifyOtpStatus = Status.loading;
    errorMessage = null;
    final result = await _authRepository.verifyForgotPassword(dto);
    result.when(
      onSuccess: (_) {
        verifyOtpStatus = Status.success;
        isForgotPassword = false;
      },
      onError: (message) {
        NotifyHelper.showErrorToast(message);
        errorMessage = message;
        verifyOtpStatus = Status.error;
      },
    );
  }

  @action
  void resetStatus() {
    verifyOtpStatus = Status.initial;
    isForgotPassword = false;
    errorMessage = null;
  }
}
