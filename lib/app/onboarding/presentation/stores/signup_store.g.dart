// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupStore on _SignupStore, Store {
  Computed<bool>? _$isRegisterEnabledComputed;

  @override
  bool get isRegisterEnabled => (_$isRegisterEnabledComputed ??= Computed<bool>(
    () => super.isRegisterEnabled,
    name: '_SignupStore.isRegisterEnabled',
  )).value;

  late final _$selectedGenderAtom = Atom(
    name: '_SignupStore.selectedGender',
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
    name: '_SignupStore.selectedCountry',
    context: context,
  );

  @override
  CountryDto? get selectedCountry {
    _$selectedCountryAtom.reportRead();
    return super.selectedCountry;
  }

  @override
  set selectedCountry(CountryDto? value) {
    _$selectedCountryAtom.reportWrite(value, super.selectedCountry, () {
      super.selectedCountry = value;
    });
  }

  late final _$selectedDateAtom = Atom(
    name: '_SignupStore.selectedDate',
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

  late final _$_formVersionAtom = Atom(
    name: '_SignupStore._formVersion',
    context: context,
  );

  @override
  int get _formVersion {
    _$_formVersionAtom.reportRead();
    return super._formVersion;
  }

  @override
  set _formVersion(int value) {
    _$_formVersionAtom.reportWrite(value, super._formVersion, () {
      super._formVersion = value;
    });
  }

  late final _$_SignupStoreActionController = ActionController(
    name: '_SignupStore',
    context: context,
  );

  @override
  void _bumpFormVersion() {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
      name: '_SignupStore._bumpFormVersion',
    );
    try {
      return super._bumpFormVersion();
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGender(Gender? gender) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
      name: '_SignupStore.setGender',
    );
    try {
      return super.setGender(gender);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountry(CountryDto? country) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
      name: '_SignupStore.setCountry',
    );
    try {
      return super.setCountry(country);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime? date) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
      name: '_SignupStore.setDate',
    );
    try {
      return super.setDate(date);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedGender: ${selectedGender},
selectedCountry: ${selectedCountry},
selectedDate: ${selectedDate},
isRegisterEnabled: ${isRegisterEnabled}
    ''';
  }
}
