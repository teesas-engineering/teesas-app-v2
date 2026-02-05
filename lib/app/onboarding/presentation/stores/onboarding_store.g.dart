// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingStore on _OnboardingStore, Store {
  Computed<bool>? _$isLastPageComputed;

  @override
  bool get isLastPage => (_$isLastPageComputed ??= Computed<bool>(
    () => super.isLastPage,
    name: '_OnboardingStore.isLastPage',
  )).value;
  Computed<double>? _$progressComputed;

  @override
  double get progress => (_$progressComputed ??= Computed<double>(
    () => super.progress,
    name: '_OnboardingStore.progress',
  )).value;

  late final _$currentPageAtom = Atom(
    name: '_OnboardingStore.currentPage',
    context: context,
  );

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$_OnboardingStoreActionController = ActionController(
    name: '_OnboardingStore',
    context: context,
  );

  @override
  void setCurrentPage(int page) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.setCurrentPage',
    );
    try {
      return super.setCurrentPage(page);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void jumpTo(int index) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
      name: '_OnboardingStore.jumpTo',
    );
    try {
      return super.jumpTo(index);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
isLastPage: ${isLastPage},
progress: ${progress}
    ''';
  }
}
