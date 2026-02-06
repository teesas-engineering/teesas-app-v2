// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'util_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UtilStore on _UtilStore, Store {
  Computed<int>? _$totalClassSelectionsComputed;

  @override
  int get totalClassSelections =>
      (_$totalClassSelectionsComputed ??= Computed<int>(
        () => super.totalClassSelections,
        name: '_UtilStore.totalClassSelections',
      )).value;
  Computed<List<CountryDto>>? _$filteredCountriesComputed;

  @override
  List<CountryDto> get filteredCountries =>
      (_$filteredCountriesComputed ??= Computed<List<CountryDto>>(
        () => super.filteredCountries,
        name: '_UtilStore.filteredCountries',
      )).value;

  late final _$classCategoryAtom = Atom(
    name: '_UtilStore.classCategory',
    context: context,
  );

  @override
  ObservableList<ClassCategoryDto> get classCategory {
    _$classCategoryAtom.reportRead();
    return super.classCategory;
  }

  @override
  set classCategory(ObservableList<ClassCategoryDto> value) {
    _$classCategoryAtom.reportWrite(value, super.classCategory, () {
      super.classCategory = value;
    });
  }

  late final _$selectedClassIdsAtom = Atom(
    name: '_UtilStore.selectedClassIds',
    context: context,
  );

  @override
  ObservableSet<int> get selectedClassIds {
    _$selectedClassIdsAtom.reportRead();
    return super.selectedClassIds;
  }

  @override
  set selectedClassIds(ObservableSet<int> value) {
    _$selectedClassIdsAtom.reportWrite(value, super.selectedClassIds, () {
      super.selectedClassIds = value;
    });
  }

  late final _$selectedTermAtom = Atom(
    name: '_UtilStore.selectedTerm',
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

  late final _$countriesAtom = Atom(
    name: '_UtilStore.countries',
    context: context,
  );

  @override
  ObservableList<CountryDto> get countries {
    _$countriesAtom.reportRead();
    return super.countries;
  }

  @override
  set countries(ObservableList<CountryDto> value) {
    _$countriesAtom.reportWrite(value, super.countries, () {
      super.countries = value;
    });
  }

  late final _$countriesSearchQueryAtom = Atom(
    name: '_UtilStore.countriesSearchQuery',
    context: context,
  );

  @override
  String get countriesSearchQuery {
    _$countriesSearchQueryAtom.reportRead();
    return super.countriesSearchQuery;
  }

  @override
  set countriesSearchQuery(String value) {
    _$countriesSearchQueryAtom.reportWrite(
      value,
      super.countriesSearchQuery,
      () {
        super.countriesSearchQuery = value;
      },
    );
  }

  late final _$coursesStatusAtom = Atom(
    name: '_UtilStore.coursesStatus',
    context: context,
  );

  @override
  Status get coursesStatus {
    _$coursesStatusAtom.reportRead();
    return super.coursesStatus;
  }

  @override
  set coursesStatus(Status value) {
    _$coursesStatusAtom.reportWrite(value, super.coursesStatus, () {
      super.coursesStatus = value;
    });
  }

  late final _$countriesStatusAtom = Atom(
    name: '_UtilStore.countriesStatus',
    context: context,
  );

  @override
  Status get countriesStatus {
    _$countriesStatusAtom.reportRead();
    return super.countriesStatus;
  }

  @override
  set countriesStatus(Status value) {
    _$countriesStatusAtom.reportWrite(value, super.countriesStatus, () {
      super.countriesStatus = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_UtilStore.errorMessage',
    context: context,
  );

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$selectedCategoriesAtom = Atom(
    name: '_UtilStore.selectedCategories',
    context: context,
  );

  @override
  ObservableMap<int, List<int>?> get selectedCategories {
    _$selectedCategoriesAtom.reportRead();
    return super.selectedCategories;
  }

  @override
  set selectedCategories(ObservableMap<int, List<int>?> value) {
    _$selectedCategoriesAtom.reportWrite(value, super.selectedCategories, () {
      super.selectedCategories = value;
    });
  }

  late final _$fetchClassCategoriesAsyncAction = AsyncAction(
    '_UtilStore.fetchClassCategories',
    context: context,
  );

  @override
  Future<void> fetchClassCategories() {
    return _$fetchClassCategoriesAsyncAction.run(
      () => super.fetchClassCategories(),
    );
  }

  late final _$fetchCountriesAsyncAction = AsyncAction(
    '_UtilStore.fetchCountries',
    context: context,
  );

  @override
  Future<void> fetchCountries() {
    return _$fetchCountriesAsyncAction.run(() => super.fetchCountries());
  }

  late final _$_UtilStoreActionController = ActionController(
    name: '_UtilStore',
    context: context,
  );

  @override
  void initCountries() {
    final _$actionInfo = _$_UtilStoreActionController.startAction(
      name: '_UtilStore.initCountries',
    );
    try {
      return super.initCountries();
    } finally {
      _$_UtilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCountry(CountryDto country) {
    final _$actionInfo = _$_UtilStoreActionController.startAction(
      name: '_UtilStore.selectCountry',
    );
    try {
      return super.selectCountry(country);
    } finally {
      _$_UtilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCategorySelection(
    int categoryId,
    int classId, {
    bool remove = false,
  }) {
    final _$actionInfo = _$_UtilStoreActionController.startAction(
      name: '_UtilStore.toggleCategorySelection',
    );
    try {
      return super.toggleCategorySelection(categoryId, classId, remove: remove);
    } finally {
      _$_UtilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearClassSelections() {
    final _$actionInfo = _$_UtilStoreActionController.startAction(
      name: '_UtilStore.clearClassSelections',
    );
    try {
      return super.clearClassSelections();
    } finally {
      _$_UtilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
classCategory: ${classCategory},
selectedClassIds: ${selectedClassIds},
selectedTerm: ${selectedTerm},
countries: ${countries},
countriesSearchQuery: ${countriesSearchQuery},
coursesStatus: ${coursesStatus},
countriesStatus: ${countriesStatus},
errorMessage: ${errorMessage},
selectedCategories: ${selectedCategories},
totalClassSelections: ${totalClassSelections},
filteredCountries: ${filteredCountries}
    ''';
  }
}
