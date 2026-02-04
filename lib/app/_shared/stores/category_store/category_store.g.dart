// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoryStore on _CategoryStore, Store {
  Computed<int>? _$totalSelectionsComputed;

  @override
  int get totalSelections => (_$totalSelectionsComputed ??= Computed<int>(
    () => super.totalSelections,
    name: '_CategoryStore.totalSelections',
  )).value;

  late final _$selectedTermAtom = Atom(
    name: '_CategoryStore.selectedTerm',
    context: context,
  );

  @override
  Term? get selectedTerm {
    _$selectedTermAtom.reportRead();
    return super.selectedTerm;
  }

  @override
  set selectedTerm(Term? value) {
    _$selectedTermAtom.reportWrite(value, super.selectedTerm, () {
      super.selectedTerm = value;
    });
  }

  late final _$selectedPreschoolCategoriesAtom = Atom(
    name: '_CategoryStore.selectedPreschoolCategories',
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
    name: '_CategoryStore.selectedPrimarySchoolCategories',
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
    name: '_CategoryStore.selectedSecondarySchoolCategories',
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
    name: '_CategoryStore.selectedNigerianLanguagesCategories',
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
    name: '_CategoryStore.selectedLeaderInMeCategories',
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
    name: '_CategoryStore.selectedMatricCategories',
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

  late final _$_CategoryStoreActionController = ActionController(
    name: '_CategoryStore',
    context: context,
  );

  @override
  void setTerm(Term? term) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.setTerm',
    );
    try {
      return super.setTerm(term);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePreschoolCategory(PreschoolCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.togglePreschoolCategory',
    );
    try {
      return super.togglePreschoolCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePrimarySchoolCategory(PrimarySchoolCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.togglePrimarySchoolCategory',
    );
    try {
      return super.togglePrimarySchoolCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSecondarySchoolCategory(SecondarySchoolCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.toggleSecondarySchoolCategory',
    );
    try {
      return super.toggleSecondarySchoolCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleNigerianLanguagesCategory(NigerianLanguagesCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.toggleNigerianLanguagesCategory',
    );
    try {
      return super.toggleNigerianLanguagesCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLeaderInMeCategory(LeaderInMeCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.toggleLeaderInMeCategory',
    );
    try {
      return super.toggleLeaderInMeCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleMatricCategory(MatricCategory category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
      name: '_CategoryStore.toggleMatricCategory',
    );
    try {
      return super.toggleMatricCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTerm: ${selectedTerm},
selectedPreschoolCategories: ${selectedPreschoolCategories},
selectedPrimarySchoolCategories: ${selectedPrimarySchoolCategories},
selectedSecondarySchoolCategories: ${selectedSecondarySchoolCategories},
selectedNigerianLanguagesCategories: ${selectedNigerianLanguagesCategories},
selectedLeaderInMeCategories: ${selectedLeaderInMeCategories},
selectedMatricCategories: ${selectedMatricCategories},
totalSelections: ${totalSelections}
    ''';
  }
}
