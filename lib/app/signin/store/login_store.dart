import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/services/secured_storage_service.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../common/enum/state_type.dart';
import '../../../common/utils/notify_helper.dart';
import '../../../router/route_helper.dart';
import '../../_shared/data/dto/login_dto/login_dto.dart';
import '../../_shared/data/dto/send_otp_dto/send_otp_dto.dart';
import '../../_shared/data/dto/user_dto/user_dto.dart';
import '../../_shared/data/dto/user_dto/user_profile_dto.dart';
import '../../_shared/domain/repository/auth_repository.dart';
import '../../_shared/stores/otp_store/otp_store.dart';
import '../../onboarding/presentation/stores/onboarding_store.dart';

part 'login_store.g.dart';

@lazySingleton
class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase(
    this._authRepository,
    this._storageService,
    this._otpStore,
    this._onboardingStore,
  ) {
    _emailOrPhoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  final AuthRepository _authRepository;
  final SecureStorageService _storageService;
  final OtpStore _otpStore;
  final OnboardingStore _onboardingStore;

  final GlobalKey<FormState> key = GlobalKey();
  late final TextEditingController _emailOrPhoneController;
  late final TextEditingController _passwordController;

  TextEditingController get emailOrPhoneController => _emailOrPhoneController;

  TextEditingController get passwordController => _passwordController;

  @observable
  Status loginStatus = Status.initial;

  @observable
  String? errorMessage;

  @computed
  bool get isLoading => loginStatus == Status.loading;

  @observable
  UserDto? user;

  @observable
  ObservableList<UserProfileDto> profiles = ObservableList();

  @action
  Future<void> login() async {
    if (key.currentState!.validate()) {
      final emailOrPhone = _emailOrPhoneController.text.trim();
      final password = _passwordController.text;

      if (emailOrPhone.isEmpty || password.isEmpty) {
        errorMessage = 'Please enter email/phone and password';
        loginStatus = Status.error;
        return;
      }

      loginStatus = Status.loading;
      errorMessage = null;

      final dto = LoginDto(emailOrPhone: emailOrPhone, password: password);

      final result = await _authRepository.login(dto);

      result.when(
        onSuccess: (user) async {
          this.user = user;
          errorMessage = null;
          loginStatus = Status.success;
          if (user.isVerified) {
            await _storageService.saveUser(user.toJson());
            profiles = ObservableList.of(user.profiles ?? []);
            getIt<RouteHelper>().showSelectAccountScreen();
          } else {
            ///taking the user to the onboarding so they can verify their account and continue the
            ///onboarding flow
            unawaited(
              ///this flow may fail, since we are relying on email or phone alone.
              ///however if verification can go through to both email and phone, this will work fine.
              ///the goal here is to switch the flow and give the user a chance to continue onboarding
              ///in cases where they didn't verify their account, after account creation
              _otpStore.sendOtp(
                SendOtpDto(email: emailOrPhone, phone: emailOrPhone),
              ),
            );
            _onboardingStore.jumpTo(1);
            unawaited(getIt<RouteHelper>().showOnboardingRoot(replace: true));
          }
        },
        onError: (message) {
          errorMessage = message;
          loginStatus = Status.error;
          NotifyHelper.showErrorToast(message);
        },
      );
    }
  }

  @action
  void resetStatus() {
    loginStatus = Status.initial;
    errorMessage = null;
  }

  void dispose() {
    _emailOrPhoneController.dispose();
    _passwordController.dispose();
  }
}
