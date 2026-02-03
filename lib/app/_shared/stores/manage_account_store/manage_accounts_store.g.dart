// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_accounts_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ManageAccountsStore on _ManageAccountsStore, Store {
  late final _$accountsAtom = Atom(
    name: '_ManageAccountsStore.accounts',
    context: context,
  );

  @override
  ObservableList<AccountItem> get accounts {
    _$accountsAtom.reportRead();
    return super.accounts;
  }

  @override
  set accounts(ObservableList<AccountItem> value) {
    _$accountsAtom.reportWrite(value, super.accounts, () {
      super.accounts = value;
    });
  }

  late final _$_ManageAccountsStoreActionController = ActionController(
    name: '_ManageAccountsStore',
    context: context,
  );

  @override
  void removeAccount(String id) {
    final _$actionInfo = _$_ManageAccountsStoreActionController.startAction(
      name: '_ManageAccountsStore.removeAccount',
    );
    try {
      return super.removeAccount(id);
    } finally {
      _$_ManageAccountsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAccount() {
    final _$actionInfo = _$_ManageAccountsStoreActionController.startAction(
      name: '_ManageAccountsStore.addAccount',
    );
    try {
      return super.addAccount();
    } finally {
      _$_ManageAccountsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editAccount() {
    final _$actionInfo = _$_ManageAccountsStoreActionController.startAction(
      name: '_ManageAccountsStore.editAccount',
    );
    try {
      return super.editAccount();
    } finally {
      _$_ManageAccountsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accounts: ${accounts}
    ''';
  }
}
