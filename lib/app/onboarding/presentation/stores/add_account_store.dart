import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/utils/form_mixin.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/util/date_picker.dart';

part 'add_account_store.g.dart';

class AddAccountStore = _AddAccountStore with _$AddAccountStore;

abstract class _AddAccountStore with Store, FormMixin {
  _AddAccountStore() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    countryDisplayController = TextEditingController();
  }

  final formKey = GlobalKey<FormState>();

  late final TextEditingController nameController;
  late final TextEditingController phoneController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController countryDisplayController;

  @observable
  Gender? selectedGender;

  @observable
  DateTime? selectedDate;

  @observable
  ObservableList<UserAccount> userAccounts = ObservableList<UserAccount>();

  String get formattedDate {
    if (selectedDate == null) return '';
    return DateFormat('yyyy-MM-dd').format(selectedDate!);
  }

  @action
  void setGender(Gender? gender) {
    selectedGender = gender;
  }

  @action
  void setDate(DateTime? date) {
    selectedDate = date;
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await AppDatePicker.pickDate(context);
    if (picked != null && picked != selectedDate) {
      setDate(picked);
    }
  }

  @action
  void addUserAccount(UserAccount user) {
    userAccounts.add(user);
  }

  @action
  void removeUserAccount(int index) {
    if (index >= 0 && index < userAccounts.length) {
      userAccounts.removeAt(index);
    }
  }

  @action
  void clearForm() {
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    passwordController.clear();
    countryDisplayController.clear();
    selectedGender = null;
    selectedDate = null;
  }

  Future<void> handleSaveAndContinue() async {
    if (formKey.currentState?.validate() ?? false) {
      if (selectedGender != null) {
        addUserAccount(UserAccount(
          name: nameController.text,
          gender: selectedGender!,
        ));
        clearForm();
      }
    }
  }

  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    countryDisplayController.dispose();
  }
}

class UserAccount {
  final String name;
  final Gender gender;

  UserAccount({required this.name, required this.gender});
}
