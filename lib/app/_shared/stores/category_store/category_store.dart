import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../enum/leader_in_me_category.dart';
import '../../enum/matric_category.dart';
import '../../enum/nigerian_languages_category.dart';
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

  @observable
  ObservableSet<NigerianLanguagesCategory> selectedNigerianLanguagesCategories =
      ObservableSet<NigerianLanguagesCategory>();

  @observable
  ObservableSet<LeaderInMeCategory> selectedLeaderInMeCategories =
      ObservableSet<LeaderInMeCategory>();

  @observable
  ObservableSet<MatricCategory> selectedMatricCategories =
      ObservableSet<MatricCategory>();

  @computed
  int get totalSelections =>
      selectedPreschoolCategories.length +
      selectedPrimarySchoolCategories.length +
      selectedSecondarySchoolCategories.length +
      selectedNigerianLanguagesCategories.length +
      selectedLeaderInMeCategories.length +
      selectedMatricCategories.length;

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

  @action
  void toggleNigerianLanguagesCategory(NigerianLanguagesCategory category) {
    if (selectedNigerianLanguagesCategories.contains(category)) {
      selectedNigerianLanguagesCategories.remove(category);
    } else {
      selectedNigerianLanguagesCategories.add(category);
    }
  }

  @action
  void toggleLeaderInMeCategory(LeaderInMeCategory category) {
    if (selectedLeaderInMeCategories.contains(category)) {
      selectedLeaderInMeCategories.remove(category);
    } else {
      selectedLeaderInMeCategories.add(category);
    }
  }

  @action
  void toggleMatricCategory(MatricCategory category) {
    if (selectedMatricCategories.contains(category)) {
      selectedMatricCategories.remove(category);
    } else {
      selectedMatricCategories.add(category);
    }
  }
}
