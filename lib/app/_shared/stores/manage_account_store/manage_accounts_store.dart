import 'package:mobx/mobx.dart';
part 'manage_accounts_store.g.dart';

class ManageAccountsStore = _ManageAccountsStore with _$ManageAccountsStore;

abstract class _ManageAccountsStore with Store {

  @observable
  ObservableList<AccountItem> accounts = ObservableList<AccountItem>.of([
    AccountItem(
      id: '1',
      name: 'Jane Omokewe',
      role: AccountRoleType.student,
      avatarUrl: 'https://i.pravatar.cc/150?u=jane',
    ),
    AccountItem(
      id: '2',
      name: 'John Omokewe',
      role: AccountRoleType.student,
      avatarUrl: 'https://i.pravatar.cc/150?u=john',
    ),
    AccountItem(
      id: '3',
      name: 'James Omokewe',
      role: AccountRoleType.parent,
      avatarUrl: 'https://i.pravatar.cc/150?u=james',
    ),
  ]);

  @action
  void removeAccount(String id) {
    accounts.removeWhere((element) => element.id == id);
  }

  @action
  void addAccount() {
    // Logic to add account
  }

  @action
  void editAccount(){}

}

enum AccountRoleType { student, parent }

class AccountItem {
  AccountItem({
    required this.id,
    required this.name,
    required this.role,
    required this.avatarUrl,
  });

  final String id;
  final String name;
  final AccountRoleType role;
  final String avatarUrl;
}
