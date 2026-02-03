import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/services/secured_storage_service.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../common/enum/state_type.dart';
import '../../../common/utils/notify_helper.dart';
import '../../../router/route_helper.dart';
import '../../_shared/data/dto/login_dto/login_dto.dart';
import '../../_shared/data/dto/user_dto/user_dto.dart';
import '../../_shared/data/dto/user_dto/user_profile_dto.dart';
import '../../_shared/domain/repository/auth_repository.dart';
part 'login_store.g.dart';

@lazySingleton
class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase({
    AuthRepository? authRepository,
    SecureStorageService? storageService,
  }) : _authRepository = authRepository ?? getIt<AuthRepository>(),
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
          } else {}
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
