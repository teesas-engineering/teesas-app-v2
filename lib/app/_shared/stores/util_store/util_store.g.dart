// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'util_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UtilStore on _UtilStore, Store {
  Computed<List<CountryDto>>? _$filteredCountriesComputed;

  @override
  List<CountryDto> get filteredCountries =>
      (_$filteredCountriesComputed ??= Computed<List<CountryDto>>(
        () => super.filteredCountries,
        name: '_UtilStore.filteredCountries',
      )).value;

  late final _$coursesAtom = Atom(name: '_UtilStore.courses', context: context);

  @override
  ObservableList<CourseDto> get courses {
    _$coursesAtom.reportRead();
    return super.courses;
  }

  @override
  set courses(ObservableList<CourseDto> value) {
    _$coursesAtom.reportWrite(value, super.courses, () {
      super.courses = value;
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

  late final _$fetchCoursesAsyncAction = AsyncAction(
    '_UtilStore.fetchCourses',
    context: context,
  );

  @override
  Future<void> fetchCourses() {
    return _$fetchCoursesAsyncAction.run(() => super.fetchCourses());
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
  String toString() {
    return '''
courses: ${courses},
countries: ${countries},
countriesSearchQuery: ${countriesSearchQuery},
coursesStatus: ${coursesStatus},
countriesStatus: ${countriesStatus},
errorMessage: ${errorMessage},
filteredCountries: ${filteredCountries}
    ''';
  }
}
