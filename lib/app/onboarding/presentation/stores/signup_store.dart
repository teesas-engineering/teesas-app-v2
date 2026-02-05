import 'dart:async';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/constants/app_constants.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/utils/form_mixin.dart';
import '../../../../common/utils/notify_helper.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../_shared/data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../../_shared/data/dto/send_otp_dto/send_otp_dto.dart';
import '../../../_shared/data/dto/sign_up_dto/sign_up_dto.dart';
import '../../../_shared/domain/repository/auth_repository.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/stores/otp_store/otp_store.dart';
import '../../../_shared/util/date_picker.dart';
import 'onboarding_store.dart';

part 'signup_store.g.dart';

@lazySingleton
class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store, FormMixin {
  _SignupStore()
    : _onboardingStore = getIt<OnboardingStore>(),
      _otpStore = getIt<OtpStore>(),
      _repository = getIt<AuthRepository>() {
    _initControllers();
    _attachListeners();
  }

  final OnboardingStore _onboardingStore;
  final AuthRepository _repository;
  final OtpStore _otpStore;

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
  Status signUpStatus = Status.initial;
  @observable
  CountryDto? selectedCountry;
  @observable
  String phoneNumber = '';
  @observable
  String parentPhoneNumber = '';

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

  @action
  Future<void> createAccount() async {
    if (formKey.currentState?.validate() ?? false) {
      final deviceId = await AppConstant.deviceId();
      final model = SignUpDto(
        name: nameController.text,
        phone: phoneNumber.substring(4),
        countryId: selectedCountry?.id ?? 87,
        dateOfBirth: formattedDate,
        gender: selectedGender,
        email: emailController.text,
        deviceId: deviceId,
        password: passwordController.text,
        parentName: parentNameController.text,
        parentPhoneNumber: parentPhoneNumber.substring(4),
      );
      signUpStatus = Status.loading;
      final response = await _repository.signUp(model);
      response.when(
        onSuccess: (result) {
          signUpStatus = Status.success;
          unawaited(
            _otpStore.sendOtp(
              SendOtpDto(email: emailController.text, phone: phoneNumber.substring(4)),
            ),
          );
          unawaited(_onboardingStore.onNext());
        },
        onError: (error) {
          signUpStatus = Status.error;
          NotifyHelper.showErrorToast(error);
        },
      );
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
