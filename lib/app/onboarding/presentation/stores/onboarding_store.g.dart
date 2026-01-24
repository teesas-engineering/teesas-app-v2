// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingStore on _OnboardingStore, Store {
  Computed<int>? _$totalSelectionsComputed;

  @override
  int get totalSelections => (_$totalSelectionsComputed ??= Computed<int>(
    () => super.totalSelections,
    name: '_OnboardingStore.totalSelections',
  )).value;

  late final _$selectedGenderAtom = Atom(
    name: '_OnboardingStore.selectedGender',
    context: context,
  );

  @override
  Gender? get selectedGender {
    _$selectedGenderAtom.reportRead();
    return super.selectedGender;
  }

  @override
  set selectedGender(Gender? value) {
    _$selectedGenderAtom.reportWrite(value, super.selectedGender, () {
      super.selectedGender = value;
    });
  }

  late final _$selectedCountryAtom = Atom(
    name: '_OnboardingStore.selectedCountry',
    context: context,
  );

  @override
  String? get selectedCountry {
    _$selectedCountryAtom.reportRead();
    return super.selectedCountry;
  }

  @override
  set selectedCountry(String? value) {
    _$selectedCountryAtom.reportWrite(value, super.selectedCountry, () {
      super.selectedCountry = value;
    });
  }

  late final _$selectedDateAtom = Atom(
    name: '_OnboardingStore.selectedDate',
    context: context,
  );

  @override
  DateTime? get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime? value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  late final _$selectedPreschoolCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedPreschoolCategories',
    context: context,
  );

  @override
  ObservableSet<PreschoolCategory> get selectedPreschoolCategories {
    _$selectedPreschoolCategoriesAtom.reportRead();
    return super.selectedPreschoolCategories;
  }

  @override
  set selectedPreschoolCategories(ObservableSet<PreschoolCategory> value) {
    _$selectedPreschoolCategoriesAtom.reportWrite(
      value,
      super.selectedPreschoolCategories,
      () {
        super.selectedPreschoolCategories = value;
      },
    );
  }

  late final _$selectedPrimarySchoolCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedPrimarySchoolCategories',
    context: context,
  );

  @override
  ObservableSet<PrimarySchoolCategory> get selectedPrimarySchoolCategories {
    _$selectedPrimarySchoolCategoriesAtom.reportRead();
    return super.selectedPrimarySchoolCategories;
  }

  @override
  set selectedPrimarySchoolCategories(
    ObservableSet<PrimarySchoolCategory> value,
  ) {
    _$selectedPrimarySchoolCategoriesAtom.reportWrite(
      value,
      super.selectedPrimarySchoolCategories,
      () {
        super.selectedPrimarySchoolCategories = value;
      },
    );
  }

  late final _$selectedSecondarySchoolCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedSecondarySchoolCategories',
    context: context,
  );

  @override
  ObservableSet<SecondarySchoolCategory> get selectedSecondarySchoolCategories {
    _$selectedSecondarySchoolCategoriesAtom.reportRead();
    return super.selectedSecondarySchoolCategories;
  }

  @override
  set selectedSecondarySchoolCategories(
    ObservableSet<SecondarySchoolCategory> value,
  ) {
    _$selectedSecondarySchoolCategoriesAtom.reportWrite(
      value,
      super.selectedSecondarySchoolCategories,
      () {
        super.selectedSecondarySchoolCategories = value;
      },
    );
  }

  late final _$selectedNigerianLanguagesCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedNigerianLanguagesCategories',
    context: context,
  );

  @override
  ObservableSet<NigerianLanguagesCategory>
  get selectedNigerianLanguagesCategories {
    _$selectedNigerianLanguagesCategoriesAtom.reportRead();
    return super.selectedNigerianLanguagesCategories;
  }

  @override
  set selectedNigerianLanguagesCategories(
    ObservableSet<NigerianLanguagesCategory> value,
  ) {
    _$selectedNigerianLanguagesCategoriesAtom.reportWrite(
      value,
      super.selectedNigerianLanguagesCategories,
      () {
        super.selectedNigerianLanguagesCategories = value;
      },
    );
  }

  late final _$selectedLeaderInMeCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedLeaderInMeCategories',
    context: context,
  );

  @override
  ObservableSet<LeaderInMeCategory> get selectedLeaderInMeCategories {
    _$selectedLeaderInMeCategoriesAtom.reportRead();
    return super.selectedLeaderInMeCategories;
  }

  @override
  set selectedLeaderInMeCategories(ObservableSet<LeaderInMeCategory> value) {
    _$selectedLeaderInMeCategoriesAtom.reportWrite(
      value,
      super.selectedLeaderInMeCategories,
      () {
        super.selectedLeaderInMeCategories = value;
      },
    );
  }

  late final _$selectedMatricCategoriesAtom = Atom(
    name: '_OnboardingStore.selectedMatricCategories',
    context: context,
  );

  @override
  ObservableSet<MatricCategory> get selectedMatricCategories {
    _$selectedMatricCategoriesAtom.reportRead();
    return super.selectedMatricCategories;
  }

  @override
  set selectedMatricCategories(ObservableSet<MatricCategory> value) {
    _$selectedMatricCategoriesAtom.reportWrite(
      value,
      super.selectedMatricCategories,
      () {
        super.selectedMatricCategories = value;
      },
    );
  }

  late final _$userAccountsAtom = Atom(
    name: '_OnboardingStore.userAccounts',
    context: context,
  );

  @override
  ObservableList<_UserAccount> get userAccounts {
    _$userAccountsAtom.reportRead();
    return super.userAccounts;
  }

  @override
  set userAccounts(ObservableList<_UserAccount> value) {
    _$userAccountsAtom.reportWrite(value, super.userAccounts, () {
      super.userAccounts = value;
    });
  }

  late final _$_OnboardingStoreActionController = ActionController(
    name: '_OnboardingStore',
    context: context,
  );

  @override
  void setGender(Gender? gender) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.setGender',
    );
    try {
      return super.setGender(gender);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountry(String? country) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.setCountry',
    );
    try {
      return super.setCountry(country);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime? date) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.setDate',
    );
    try {
      return super.setDate(date);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePreschoolCategory(PreschoolCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.togglePreschoolCategory',
    );
    try {
      return super.togglePreschoolCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePrimarySchoolCategory(PrimarySchoolCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.togglePrimarySchoolCategory',
    );
    try {
      return super.togglePrimarySchoolCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSecondarySchoolCategory(SecondarySchoolCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.toggleSecondarySchoolCategory',
    );
    try {
      return super.toggleSecondarySchoolCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleNigerianLanguagesCategory(NigerianLanguagesCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.toggleNigerianLanguagesCategory',
    );
    try {
      return super.toggleNigerianLanguagesCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLeaderInMeCategory(LeaderInMeCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.toggleLeaderInMeCategory',
    );
    try {
      return super.toggleLeaderInMeCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleMatricCategory(MatricCategory category) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.toggleMatricCategory',
    );
    try {
      return super.toggleMatricCategory(category);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserAccount(_UserAccount user) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.addUserAccount',
    );
    try {
      return super.addUserAccount(user);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUserAccount(int index) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.removeUserAccount',
    );
    try {
      return super.removeUserAccount(index);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearForm() {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.clearForm',
    );
    try {
      return super.clearForm();
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedGender: ${selectedGender},
selectedCountry: ${selectedCountry},
selectedDate: ${selectedDate},
selectedPreschoolCategories: ${selectedPreschoolCategories},
selectedPrimarySchoolCategories: ${selectedPrimarySchoolCategories},
selectedSecondarySchoolCategories: ${selectedSecondarySchoolCategories},
selectedNigerianLanguagesCategories: ${selectedNigerianLanguagesCategories},
selectedLeaderInMeCategories: ${selectedLeaderInMeCategories},
selectedMatricCategories: ${selectedMatricCategories},
userAccounts: ${userAccounts},
totalSelections: ${totalSelections}
    ''';
  }
}
