import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/utils/form_mixin.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/modal/countries_modal.dart';
import '../../../_shared/enum/leader_in_me_category.dart';
import '../../../_shared/enum/matric_category.dart';
import '../../../_shared/enum/nigerian_languages_category.dart';
import '../../../_shared/enum/preschool_category.dart';
import '../../../_shared/enum/primary_school_category.dart';
import '../../../_shared/enum/secondary_school_category.dart';
import '../../../_shared/util/date_picker.dart';

part 'onboarding_store.g.dart';

class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store, FormMixin {
  _OnboardingStore() {
    _initializeControllers();
    _pageController = PageController();
  }

  void _initializeControllers() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    cityController = TextEditingController();
    emailController = TextEditingController();
    parentNameController = TextEditingController();
    parentPhoneController = TextEditingController();
    passwordController = TextEditingController();
    referralCodeController = TextEditingController();
  }

  final formKey = GlobalKey<FormState>();

  late final TextEditingController nameController;
  late final TextEditingController phoneController;
  late final TextEditingController cityController;
  late final TextEditingController emailController;
  late final TextEditingController parentNameController;
  late final TextEditingController parentPhoneController;
  late final TextEditingController passwordController;
  late final TextEditingController referralCodeController;

  @observable
  Gender? selectedGender;

  @observable
  String? selectedCountry;

  @observable
  DateTime? selectedDate;

  @observable
  ObservableSet<PreschoolCategory> selectedPreschoolCategories =
      ObservableSet<PreschoolCategory>();

  @observable
  ObservableSet<PrimarySchoolCategory> selectedPrimarySchoolCategories =
      ObservableSet<PrimarySchoolCategory>();

  @observable
  ObservableSet<SecondarySchoolCategory> selectedSecondarySchoolCategories =
      ObservableSet<SecondarySchoolCategory>();

  @observable
  ObservableSet<NigerianLanguagesCategory> selectedNigerianLanguagesCategories =
      ObservableSet<NigerianLanguagesCategory>();

  @observable
  ObservableSet<LeaderInMeCategory> selectedLeaderInMeCategories =
      ObservableSet<LeaderInMeCategory>();

  @observable
  ObservableSet<MatricCategory> selectedMatricCategories =
      ObservableSet<MatricCategory>();

  @observable
  ObservableList<_UserAccount> userAccounts = ObservableList<_UserAccount>();

  late final PageController _pageController;

  PageController get pageController => _pageController;

  static const int totalPages = 5;

  @observable
  int currentPage = 0;

  @computed
  bool get isLastPage => currentPage == totalPages - 1;

  @computed
  double get progress {
    if (totalPages == 0) return 0.0;
    return (currentPage + 1) / totalPages;
  }

  @computed
  int get totalSelections =>
      selectedPreschoolCategories.length +
      selectedPrimarySchoolCategories.length +
      selectedSecondarySchoolCategories.length +
      selectedNigerianLanguagesCategories.length +
      selectedLeaderInMeCategories.length +
      selectedMatricCategories.length;

  @action
  void setGender(Gender? gender) {
    selectedGender = gender;
  }

  @action
  void setCountry(String? country) {
    selectedCountry = country;
  }

  @action
  void setDate(DateTime? date) {
    selectedDate = date;
  }

  @action
  void togglePreschoolCategory(PreschoolCategory category) {
    if (selectedPreschoolCategories.contains(category)) {
      selectedPreschoolCategories.remove(category);
    } else {
      selectedPreschoolCategories.add(category);
    }
  }

  @action
  void togglePrimarySchoolCategory(PrimarySchoolCategory category) {
    if (selectedPrimarySchoolCategories.contains(category)) {
      selectedPrimarySchoolCategories.remove(category);
    } else {
      selectedPrimarySchoolCategories.add(category);
    }
  }

  @action
  void toggleSecondarySchoolCategory(SecondarySchoolCategory category) {
    if (selectedSecondarySchoolCategories.contains(category)) {
      selectedSecondarySchoolCategories.remove(category);
    } else {
      selectedSecondarySchoolCategories.add(category);
    }
  }

  @action
  void toggleNigerianLanguagesCategory(NigerianLanguagesCategory category) {
    if (selectedNigerianLanguagesCategories.contains(category)) {
      selectedNigerianLanguagesCategories.remove(category);
    } else {
      selectedNigerianLanguagesCategories.add(category);
    }
  }

  @action
  void toggleLeaderInMeCategory(LeaderInMeCategory category) {
    if (selectedLeaderInMeCategories.contains(category)) {
      selectedLeaderInMeCategories.remove(category);
    } else {
      selectedLeaderInMeCategories.add(category);
    }
  }

  @action
  void toggleMatricCategory(MatricCategory category) {
    if (selectedMatricCategories.contains(category)) {
      selectedMatricCategories.remove(category);
    } else {
      selectedMatricCategories.add(category);
    }
  }

  @action
  void setCurrentPage(int page) {
    currentPage = page;
  }

  Future<void> goToPreviousPage() async {
    if (currentPage > 0) {
      await _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<bool> handleBackPress() async {
    if (currentPage == 0) {
      return true; // Allow back navigation on first page
    } else if (isLastPage) {
      return true; // Allow back navigation on last page
    } else {
      await goToPreviousPage();
      return false; // Prevent default back navigation, go to previous page
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await AppDatePicker.pickDate(context);
    if (picked != null && picked != selectedDate) {
      setDate(picked);
    }
  }



  Future<void> handleRegister() async {
    if (formKey.currentState?.validate() ?? false) {
      // Handle registration logic here
    }
  }

  Future<void> handleSaveAndContinue() async {
    if (formKey.currentState?.validate() ?? false) {
      // Add user to accounts list
      if (selectedGender != null) {
        final user = _UserAccount(
          name: nameController.text,
          gender: selectedGender!,
        );
        addUserAccount(user);
        // Clear form for next user
        clearForm();
      }
    }
  }

  @action
  void addUserAccount(_UserAccount user) {
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
    cityController.clear();
    emailController.clear();
    parentNameController.clear();
    parentPhoneController.clear();
    passwordController.clear();
    referralCodeController.clear();
    selectedGender = null;
    selectedCountry = null;
    selectedDate = null;
  }

  String get formattedDate {
    if (selectedDate == null) return '';
    return DateFormat('yyyy-MM-dd').format(selectedDate!);
  }

  String get countryDisplayText {
    return selectedCountry ?? '';
  }

  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    cityController.dispose();
    emailController.dispose();
    parentNameController.dispose();
    parentPhoneController.dispose();
    passwordController.dispose();
    referralCodeController.dispose();
    _pageController.dispose();
  }
}

class _UserAccount {
  final String name;
  final Gender gender;

  _UserAccount({required this.name, required this.gender});
}
