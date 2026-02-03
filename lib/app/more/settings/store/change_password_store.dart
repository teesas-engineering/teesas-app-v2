import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'change_password_store.g.dart';

class ChangePasswordStore = _ChangePasswordStore with _$ChangePasswordStore;

abstract class _ChangePasswordStore with Store {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @computed
  bool get isFormValid =>
      oldPasswordController.text.isNotEmpty &&
      newPasswordController.text.isNotEmpty &&
      confirmPasswordController.text.isNotEmpty &&
      newPasswordController.text == confirmPasswordController.text;

  @action
  Future<void> changePassword() async {
    if (!isFormValid) {
      errorMessage = 'Please fill in all fields correctly';
      return;
    }

    isLoading = true;
    try {
      // TODO: Implement actual password change API call
      await Future<void>.delayed(const Duration(seconds: 2));
      // Success handling will be added here
    } catch (e) {
      errorMessage = 'Failed to change password. Please try again.';
    } finally {
      isLoading = false;
    }
  }

  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
  }
}
