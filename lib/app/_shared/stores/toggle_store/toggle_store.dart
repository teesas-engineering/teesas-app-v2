import 'package:mobx/mobx.dart';

part 'toggle_store.g.dart';

class ToggleStore = _ToggleStore with _$ToggleStore;

abstract class _ToggleStore with Store {
  @observable
  bool value = true;

  @action
  void toggle() {
    value = !value;
  }

  @action
  void setValue(bool newValue) {
    value = newValue;
  }
}
