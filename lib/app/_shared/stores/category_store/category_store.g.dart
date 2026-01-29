// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoryStore on _CategoryStore, Store {
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
  String toString() {
    return '''
selectedTerm: ${selectedTerm},
selectedPreschoolCategories: ${selectedPreschoolCategories},
selectedPrimarySchoolCategories: ${selectedPrimarySchoolCategories},
selectedSecondarySchoolCategories: ${selectedSecondarySchoolCategories}
    ''';
  }
}
