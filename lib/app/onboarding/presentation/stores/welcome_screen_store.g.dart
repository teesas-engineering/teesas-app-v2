// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WelcomeScreenStore on _WelcomeScreenStoreBase, Store {
  Computed<bool>? _$isLastPageComputed;

  @override
  bool get isLastPage => (_$isLastPageComputed ??= Computed<bool>(
    () => super.isLastPage,
    name: '_WelcomeScreenStoreBase.isLastPage',
  )).value;

  late final _$currentPageAtom = Atom(
    name: '_WelcomeScreenStoreBase.currentPage',
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

  late final _$_WelcomeScreenStoreBaseActionController = ActionController(
    name: '_WelcomeScreenStoreBase',
    context: context,
  );

  @override
  void setCurrentPage(int index) {
    final _$actionInfo = _$_WelcomeScreenStoreBaseActionController.startAction(
      name: '_WelcomeScreenStoreBase.setCurrentPage',
    );
    try {
      return super.setCurrentPage(index);
    } finally {
      _$_WelcomeScreenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
isLastPage: ${isLastPage}
    ''';
  }
}
