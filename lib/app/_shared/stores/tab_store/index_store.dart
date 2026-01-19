import 'package:mobx/mobx.dart';
part 'index_store.g.dart';

class IndexStore = _IndexStore with _$IndexStore;

abstract class _IndexStore with Store {
  @observable
  int currentIndex = 0;

  @action
  void setIndex(int index) {
    currentIndex = index;
  }
}
