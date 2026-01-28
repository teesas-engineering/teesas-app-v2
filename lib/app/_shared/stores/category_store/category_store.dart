import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../enum/preschool_category.dart';
import '../../enum/primary_school_category.dart';
import '../../enum/secondary_school_category.dart';
import '../../enum/term.dart';

part 'category_store.g.dart';

@lazySingleton
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore with Store {
  @observable
  Term? selectedTerm;

  @observable
  ObservableSet<PreschoolCategory> selectedPreschoolCategories =
      ObservableSet<PreschoolCategory>();

  @observable
  ObservableSet<PrimarySchoolCategory> selectedPrimarySchoolCategories =
      ObservableSet<PrimarySchoolCategory>();

  @observable
  ObservableSet<SecondarySchoolCategory> selectedSecondarySchoolCategories =
      ObservableSet<SecondarySchoolCategory>();

  @action
  void setTerm(Term? term) {
    selectedTerm = term;
  }

  @action
  void togglePreschoolCategory(PreschoolCategory category) {
    if (selectedPreschoolCategories.contains(category)) {
      selectedPreschoolCategories.remove(category);
    } else {
      selectedPreschoolCategories.add(category);
    }
  }

  @action
  void togglePrimarySchoolCategory(PrimarySchoolCategory category) {
    if (selectedPrimarySchoolCategories.contains(category)) {
      selectedPrimarySchoolCategories.remove(category);
    } else {
      selectedPrimarySchoolCategories.add(category);
    }
  }

  @action
  void toggleSecondarySchoolCategory(SecondarySchoolCategory category) {
    if (selectedSecondarySchoolCategories.contains(category)) {
      selectedSecondarySchoolCategories.remove(category);
    } else {
      selectedSecondarySchoolCategories.add(category);
    }
  }
}
