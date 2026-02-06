import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/enum/state_type.dart';
import '../../../../common/enum/storage_keys.dart';
import '../../../../common/services/secured_storage_service.dart';
import '../../../../common/utils/countries_util.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../data/dto/get_countries_dto/get_countries_data_dto.dart';
import '../../data/dto/get_courses_dto/course_dto.dart';
import '../../data/dto/get_courses_dto/get_courses_data_dto.dart';
import '../../domain/repository/util_repository.dart';
import '../../enum/term.dart';

part 'util_store.g.dart';

@lazySingleton
class UtilStore = _UtilStore with _$UtilStore;

abstract class _UtilStore with Store {
  _UtilStore(this._utilRepository, this._storageService);

  final UtilRepository _utilRepository;
  final SecureStorageService _storageService;

  @observable
  ObservableList<ClassCategoryDto> classCategory =
      ObservableList<ClassCategoryDto>();

  @observable
  ObservableSet<int> selectedClassIds = ObservableSet<int>();

  @observable
  Term? selectedTerm;

  @observable
  ObservableList<CountryDto> countries = ObservableList.of(
    CountriesUtil().countries,
  );

  @observable
  String countriesSearchQuery = '';

  @observable
  Status coursesStatus = Status.initial;

  @observable
  Status countriesStatus = Status.initial;

  @observable
  String? errorMessage;

  @observable
  ObservableMap<int, List<int>?> selectedCategories = ObservableMap();

  @action
  void initCountries() {
    countries = ObservableList.of(CountriesUtil().countries);
  }

  @action
  void selectCountry(CountryDto country) {
    countriesSearchQuery = '';
    getIt<RouteHelper>().pop(country);
  }



  @action
  void toggleCategorySelection(int categoryId, int classId, {bool remove = false}) {
    final subSelection = selectedCategories[categoryId] ?? [];
    List<int> value = [];
    if (remove) {
      value = subSelection.where((e) => e != classId).toList();
    } else {
      value = [...subSelection, classId];
    }
    selectedCategories[categoryId] = value;
  }

  @action
  void clearClassSelections() {
    selectedClassIds.clear();
  }

  @computed
  int get totalClassSelections => selectedClassIds.length;

  @computed
  List<CountryDto> get filteredCountries {
    final query = countriesSearchQuery.trim().toLowerCase();
    if (query.isEmpty) {
      return List<CountryDto>.from(countries);
    }
    return countries
        .where((c) => (c.name ?? '').toLowerCase().contains(query))
        .toList();
  }

  @action
  Future<void> fetchClassCategories() async {
    if (coursesStatus.isSuccess) {
      return;
    }
    errorMessage = null;
    final cached = await _storageService.get(StorageKeys.utilCourses);
    if (cached != null) {
      try {
        final data = GetCoursesDataDto.fromJson(cached);
        classCategory = ObservableList.of(data.courses);
        coursesStatus = Status.success;

        return;
      } catch (_) {
        coursesStatus = Status.loading;
      }
    }

    if (coursesStatus != Status.success) {
      coursesStatus = Status.loading;
      final result = await _utilRepository.getCourses();
      result.when(
        onSuccess: (data) async {
          classCategory
            ..clear()
            ..addAll(data);
          coursesStatus = Status.success;
          await _storageService.writeJson(
            StorageKeys.utilCourses,
            GetCoursesDataDto(courses: data).toJson(),
          );
        },
        onError: (error) {
          errorMessage = error;
          coursesStatus = Status.error;
        },
      );
    }
  }

  /// we don't get to call this method unless it is necessary
  @action
  Future<void> fetchCountries() async {
    errorMessage = null;

    final cached = await _storageService.get(StorageKeys.utilCountries);
    if (cached != null) {
      try {
        final data = GetCountriesDto.fromJson(cached);
        countries = ObservableList.of(data.countries);
        countriesStatus = Status.success;
        return;
      } catch (_) {}
    }

    if (countriesStatus != Status.success) {
      countriesStatus = Status.loading;
      final result = await _utilRepository.getCountries();
      result.when(
        onSuccess: (data) async {
          countries = ObservableList.of(data);
          countriesStatus = Status.success;
          await _storageService.writeJson(
            StorageKeys.utilCountries,
            GetCountriesDto(countries: data).toJson(),
          );
        },
        onError: (error) {
          errorMessage = error;
          countriesStatus = Status.error;
        },
      );
    }
  }
}
