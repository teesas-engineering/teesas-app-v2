import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../dependency_manager/injectable.dart';
import '../../_shared/data/dto/forgot_password_dto/forgot_password_dto.dart';
import '../../_shared/domain/repository/auth_repository.dart';

part 'forgot_password_store.g.dart';

enum ForgotPasswordStatus { initial, loading, success, failure }

class ForgotPasswordStore = _ForgotPasswordStoreBase with _$ForgotPasswordStore;

abstract class _ForgotPasswordStoreBase with Store {
  _ForgotPasswordStoreBase({
    AuthRepository? authRepository,
  }) : _authRepository = authRepository ?? getIt<AuthRepository>() {
    _phoneController = TextEditingController();
  }

  final AuthRepository _authRepository;

  late final TextEditingController _phoneController;

  TextEditingController get phoneController => _phoneController;

  @observable
  ForgotPasswordStatus status = ForgotPasswordStatus.initial;

  @observable
  String? errorMessage;

  @computed
  bool get isLoading => status == ForgotPasswordStatus.loading;

  @action
  Future<void> submitForgotPassword() async {
    final phone = _phoneController.text.trim();

    if (phone.isEmpty) {
      errorMessage = 'Please enter your phone number';
      status = ForgotPasswordStatus.failure;
      return;
    }

    status = ForgotPasswordStatus.loading;
    errorMessage = null;

    final dto = ForgotPasswordDto(phone: phone);

    final result = await _authRepository.forgotPassword(dto);

    result.when(
      onSuccess: (_) {
        status = ForgotPasswordStatus.success;
      },
      onError: (message) {
        errorMessage = message;
        status = ForgotPasswordStatus.failure;
      },
    );
  }

  @action
  void resetStatus() {
    status = ForgotPasswordStatus.initial;
    errorMessage = null;
  }

  void dispose() {
    _phoneController.dispose();
  }
}
