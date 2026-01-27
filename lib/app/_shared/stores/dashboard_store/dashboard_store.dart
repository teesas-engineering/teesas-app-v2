import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_store.g.dart';

@lazySingleton
class DashboardStore = _DashboardStore with _$DashboardStore;

abstract class _DashboardStore with Store {
  @observable
  int currentIndex = 0;

  @action
  void setIndex(int index) {
    currentIndex = index;
  }

  @action
  void reset() {
    currentIndex = 0;
  }
}
