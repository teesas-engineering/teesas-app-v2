import 'package:mobx/mobx.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  // Expansion states
  @observable
  ObservableMap<String, bool> expandedSections = ObservableMap.of({
    'security': false,
    'videoResolution': false,
    'pushNotification': false,
    'contactUs': false,
  });

  // Dark mode
  @observable
  bool isDarkMode = false;

  // Video resolution
  @observable
  String selectedVideoResolution = '480P';

  // Security settings
  @observable
  bool twoFactorAuth = false;

  @observable
  bool informationCollection = true;

  // Notification settings
  @observable
  bool bonusNotification = false;

  @observable
  bool practiceReminder = true;

  @observable
  bool emailNotification = true;

  @action
  void toggleSection(String section) {
    expandedSections[section] = !(expandedSections[section] ?? false);
  }

  @action
  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
  }

  @action
  void setVideoResolution(String resolution) {
    selectedVideoResolution = resolution;
  }

  @action
  void toggleTwoFactorAuth() {
    twoFactorAuth = !twoFactorAuth;
  }

  @action
  void toggleInformationCollection() {
    informationCollection = !informationCollection;
  }

  @action
  void toggleBonusNotification() {
    bonusNotification = !bonusNotification;
  }

  @action
  void togglePracticeReminder() {
    practiceReminder = !practiceReminder;
  }

  @action
  void toggleEmailNotification() {
    emailNotification = !emailNotification;
  }

  // Placeholder actions
  @action
  void onChangePasswordTap() {
    // Placeholder for future navigation
  }

  @action
  void onStudyReminderTap() {
    // Placeholder for future navigation
  }

  @action
  void onChatWithUsTap() {
    // Placeholder for future navigation
  }

  @action
  void onCallUsTap() {
    // Placeholder for future navigation
  }

  @action
  void onLeaveFeedbackTap() {
    // Placeholder for future navigation
  }

  @action
  void onTermsAndConditionsTap() {
    // Placeholder for future T&C navigation
  }
}
