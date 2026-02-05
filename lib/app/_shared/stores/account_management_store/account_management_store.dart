import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/enum/account_management_action.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/utils/notify_helper.dart';
import '../../data/dto/add_account_dto/add_account_class_dto.dart';
import '../../data/dto/add_account_dto/add_account_course_dto.dart';
import '../../data/dto/add_account_dto/add_account_item_dto.dart';
import '../../data/dto/add_account_dto/add_account_request_dto.dart';
import '../../data/dto/add_user_course_dto/add_user_course_request_dto.dart';
import '../../data/dto/get_countries_dto/get_countries_country_dto.dart';
import '../../data/dto/switch_profile_dto/switch_profile_dto.dart';
import '../../data/dto/user_dto/user_dto.dart';
import '../../domain/repository/profile_repository.dart';
import '../../enum/gender.dart';
import '../../util/date_picker.dart';
import '../util_store/util_store.dart';

part 'account_management_store.g.dart';

@lazySingleton
class AccountManagementStore = _AccountManagementStoreBase
    with _$AccountManagementStore;

abstract class _AccountManagementStoreBase with Store {
  _AccountManagementStoreBase(this._profileRepository, this._utilStore);

  final ProfileRepository _profileRepository;
  final UtilStore _utilStore;

  TextEditingController nameController = TextEditingController();
  @observable
  Status status = Status.initial;

  @observable
  String? errorMessage;

  @observable
  ObservableList<AddAccountItemDto> pendingAccounts = ObservableList();

  @observable
  AddAccountItemDto? selectedAccount;
  @observable
  List<UserDto> userProfiles = [];

  @observable
  CountryDto? selectedCountry;

  @observable
  AccountManagementAction userAction = AccountManagementAction.viewList;

  @computed
  bool get isLoading => status == Status.loading;

  final formKey = GlobalKey<FormState>();

  @action
  void init({
    AccountManagementAction userAction = AccountManagementAction.initial,
  }) {
    this.userAction = userAction;
  }

  @action
  Future<void> saveAndContinue() async {
    selectedAccount = AddAccountItemDto(
      name: nameController.text,
      countryId: selectedCountry?.id ?? 87,
      dateOfBirth: formattedDate,
      gender: selectedGender ?? Gender.male,
      courses: [],
    );
    userAction = AccountManagementAction.selectCategory;
  }

  @action
  Future<void> saveAccount(ObservableMap<int, List<int>?> selections) async {
    if (formKey.currentState!.validate() && selectedAccount != null) {
      if (userAction == AccountManagementAction.add ||
          userAction == AccountManagementAction.initial) {
        final List<AddAccountCourseDto> userCategories = [];
        selections.forEach((key, value) {
          userCategories.add(
            AddAccountCourseDto(
              id: key,
              classes:
                  value?.map((e) => AddAccountClassDto(id: e)).toList() ?? [],
            ),
          );
        });
        final account = selectedAccount!.copyWith(courses: userCategories);

        pendingAccounts.add(account);
      } else {
        if (selectedAccountIndex != null) {
          selectedAccount = selectedAccount?.copyWith(
            name: nameController.text,
            countryId: selectedCountry?.id ?? 87,
            dateOfBirth: formattedDate,
            gender: selectedGender ?? Gender.male,
          );
          pendingAccounts[selectedAccountIndex!] = selectedAccount!;
        }
      }
      userAction = AccountManagementAction.viewList;
      resetStatus();
    }
  }

  @action
  void removeAccountFromPending(int index) {
    if (index >= 0 && index < pendingAccounts.length) {
      pendingAccounts.removeAt(index);
      if (pendingAccounts.isEmpty) {
        userAction = AccountManagementAction.add;
      }
    }
  }

  @action
  void updateAccountInPending({
    required AddAccountItemDto account,
    required int index,
  }) {
    if (index >= 0 && index < pendingAccounts.length) {
      pendingAccounts[index] = account;
    }
  }

  @action
  Future<void> submitAccounts() async {
    if (pendingAccounts.isEmpty) {
      return;
    }
    status = Status.loading;
    errorMessage = null;

    final result = await _profileRepository.addAccount(
      AddAccountRequestDto(account: pendingAccounts.toList()),
    );

    result.when(
      onSuccess: (_) {
        status = Status.success;
        pendingAccounts.clear();
      },
      onError: (message) {
        errorMessage = message;
        status = Status.error;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @action
  Future<void> switchProfile(SwitchProfileDto dto) async {
    status = Status.loading;
    errorMessage = null;

    final result = await _profileRepository.switchProfile(dto);

    result.when(
      onSuccess: (_) {
        status = Status.success;
      },
      onError: (message) {
        errorMessage = message;
        status = Status.error;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @observable
  int? selectedAccountIndex;

  @action
  void editAccount(AddAccountItemDto item, int index) {
    userAction = AccountManagementAction.edit;
    nameController.text = item.name;
    selectedAccountIndex = index;
    selectedGender = item.gender;
    selectedDate = DateTime.tryParse(item.dateOfBirth);
    selectedCountry = _utilStore.countries.firstWhere(
      (e) => e.id == item.countryId,
    );
  }

  @action
  Future<void> loadUserProfiles() async {
    status = Status.loading;
    errorMessage = null;
    final result = await _profileRepository.getUserProfiles();
    result.when(
      onSuccess: (profiles) {
        userProfiles = profiles;
        status = Status.success;
      },
      onError: (message) {
        errorMessage = message;
        status = Status.error;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @action
  Future<void> addUserCourse(AddUserCourseRequestDto dto) async {
    status = Status.loading;
    errorMessage = null;
    final result = await _profileRepository.addUserCourse(dto);
    result.when(
      onSuccess: (_) {
        status = Status.success;
      },
      onError: (message) {
        errorMessage = message;
        status = Status.error;
        NotifyHelper.showErrorToast(message);
      },
    );
  }

  @action
  void resetStatus() {
    status = Status.initial;
    errorMessage = null;
    nameController.clear();
    selectedGender = null;
    selectedCountry = null;
    selectedDate = null;
  }

  @observable
  Gender? selectedGender;

  @observable
  DateTime? selectedDate;

  String get formattedDate {
    if (selectedDate == null) {
      return '';
    }
    return DateFormat('yyyy-MM-dd').format(selectedDate!);
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await AppDatePicker.pickDate(context);
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }

  @action
  void selectCategoryForUser(AddAccountItemDto account) {
    selectedAccount = account;
    userAction = AccountManagementAction.selectCategory;
  }

  @action
  void saveCoursesForSelectedAccount(List<AddAccountCourseDto> courses) {
    if (selectedAccount == null) {
      return;
    }
    final updated = selectedAccount!.copyWith(courses: courses);
    final index = pendingAccounts.indexWhere(
      (a) =>
          a.name == selectedAccount!.name &&
          a.dateOfBirth == selectedAccount!.dateOfBirth &&
          a.countryId == selectedAccount!.countryId,
    );
    if (index >= 0) {
      pendingAccounts[index] = updated;
    }
    selectedAccount = updated;
  }

  @action
  void addAnotherUser() {
    resetStatus();
    userAction = AccountManagementAction.add;
  }

  @action
  void clearForm() {
    nameController.clear();
    selectedGender = null;
    selectedDate = null;
  }
}
