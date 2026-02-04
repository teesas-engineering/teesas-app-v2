import 'dart:async';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/utils/form_mixin.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../_shared/data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/util/date_picker.dart';
import 'onboarding_store.dart';

part 'signup_store.g.dart';

@lazySingleton
class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store, FormMixin {
  _SignupStore()
      : _onboardingStore =  getIt<OnboardingStore>() {
    _initControllers();
    _attachListeners();
  }

  final OnboardingStore  _onboardingStore;

  void _initControllers() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    parentNameController = TextEditingController();
    parentPhoneController = TextEditingController();
    passwordController = TextEditingController();
    referralCodeController = TextEditingController();
    countryDisplayController = TextEditingController();
  }

  void _attachListeners() {
    nameController.addListener(_bumpFormVersion);
    phoneController.addListener(_bumpFormVersion);
    emailController.addListener(_bumpFormVersion);
    parentNameController.addListener(_bumpFormVersion);
    parentPhoneController.addListener(_bumpFormVersion);
    passwordController.addListener(_bumpFormVersion);
    referralCodeController.addListener(_bumpFormVersion);
  }

  final formKey = GlobalKey<FormState>();

  late final TextEditingController nameController;
  late final TextEditingController phoneController;
  late final TextEditingController emailController;
  late final TextEditingController parentNameController;
  late final TextEditingController parentPhoneController;
  late final TextEditingController passwordController;
  late final TextEditingController referralCodeController;
  late final TextEditingController countryDisplayController;

  @observable
  Gender? selectedGender;

  @observable
  CountryDto? selectedCountry;

  @observable
  DateTime? selectedDate;

  @observable
  int _formVersion = 0;

  @action
  void _bumpFormVersion() {
    _formVersion++;
  }

  @computed
  bool get isRegisterEnabled {
    // Touch version so this computed re-runs when listeners fire
    _formVersion;
    final name = nameController.text.trim().isNotEmpty;
    final phone = phoneController.text.trim().isNotEmpty;
    final country = selectedCountry != null;
    final date = selectedDate != null;
    final gender = selectedGender != null;
    final email = emailController.text.trim().isNotEmpty;
    final parentName = parentNameController.text.trim().isNotEmpty;
    final parentPhone = parentPhoneController.text.trim().isNotEmpty;
    final password = passwordController.text.trim().isNotEmpty;
    return name &&
        phone &&
        country &&
        date &&
        gender &&
        email &&
        parentName &&
        parentPhone &&
        password;
  }

  String get formattedDate {
    if (selectedDate == null) {
      return '';
    }
    return DateFormat('yyyy-MM-dd').format(selectedDate!);
  }

  @action
  void setGender(Gender? gender) {
    selectedGender = gender;
    _bumpFormVersion();
  }

  @action
  void setCountry(CountryDto? country) {
    selectedCountry = country;
    countryDisplayController.text = country?.name ?? '';
    _bumpFormVersion();
  }

  @action
  void setDate(DateTime? date) {
    selectedDate = date;
    _bumpFormVersion();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await AppDatePicker.pickDate(context);
    if (picked != null && picked != selectedDate) {
      setDate(picked);
    }
  }

  Future<void> handleRegister() async {
    if (formKey.currentState?.validate() ?? false) {
      // Trigger onboarding store actions if needed (e.g. next page)
      unawaited(_onboardingStore.onNext());
    }
  }

  void dispose() {
    nameController.removeListener(_bumpFormVersion);
    phoneController.removeListener(_bumpFormVersion);
    emailController.removeListener(_bumpFormVersion);
    parentNameController.removeListener(_bumpFormVersion);
    parentPhoneController.removeListener(_bumpFormVersion);
    passwordController.removeListener(_bumpFormVersion);
    referralCodeController.removeListener(_bumpFormVersion);
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    parentNameController.dispose();
    parentPhoneController.dispose();
    passwordController.dispose();
    referralCodeController.dispose();
    countryDisplayController.dispose();
  }

}
