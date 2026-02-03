import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/services/secured_storage_service.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../common/enum/state_type.dart';
import '../../_shared/data/dto/login_dto/login_dto.dart';
import '../../_shared/domain/repository/auth_repository.dart';

part 'login_store.g.dart';


class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase({
    AuthRepository? authRepository,
    SecureStorageService? storageService,
  })  : _authRepository = authRepository ?? getIt<AuthRepository>(),
        _storageService = storageService ?? getIt<SecureStorageService>() {
    _emailOrPhoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  final AuthRepository _authRepository;
  final SecureStorageService _storageService;

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

  @action
  Future<void> login() async {
    if(key.currentState!.validate()) {
      final emailOrPhone = _emailOrPhoneController.text.trim();
      final password = _passwordController.text;

      if (emailOrPhone.isEmpty || password.isEmpty) {
        errorMessage = 'Please enter email/phone and password';
        loginStatus = Status.error;
        return;
      }

      loginStatus = Status.loading;
      errorMessage = null;

      final dto = LoginDto(
        emailOrPhone: emailOrPhone,
        password: password,
      );

      final result = await _authRepository.login(dto);

      result.when(
        onSuccess: (user) async {
          errorMessage = null;
          await _storageService.saveUser(user.toJson());
          loginStatus = Status.success;
        },
        onError: (message) {
          //todo show snackbar
          errorMessage = message;
          loginStatus = Status.error;
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
