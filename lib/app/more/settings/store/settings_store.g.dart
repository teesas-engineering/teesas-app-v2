// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsStore on _SettingsStore, Store {
  late final _$expandedSectionsAtom = Atom(
    name: '_SettingsStore.expandedSections',
    context: context,
  );

  @override
  ObservableMap<String, bool> get expandedSections {
    _$expandedSectionsAtom.reportRead();
    return super.expandedSections;
  }

  @override
  set expandedSections(ObservableMap<String, bool> value) {
    _$expandedSectionsAtom.reportWrite(value, super.expandedSections, () {
      super.expandedSections = value;
    });
  }

  late final _$isDarkModeAtom = Atom(
    name: '_SettingsStore.isDarkMode',
    context: context,
  );

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.reportRead();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.reportWrite(value, super.isDarkMode, () {
      super.isDarkMode = value;
    });
  }

  late final _$selectedVideoResolutionAtom = Atom(
    name: '_SettingsStore.selectedVideoResolution',
    context: context,
  );

  @override
  String get selectedVideoResolution {
    _$selectedVideoResolutionAtom.reportRead();
    return super.selectedVideoResolution;
  }

  @override
  set selectedVideoResolution(String value) {
    _$selectedVideoResolutionAtom.reportWrite(
      value,
      super.selectedVideoResolution,
      () {
        super.selectedVideoResolution = value;
      },
    );
  }

  late final _$twoFactorAuthAtom = Atom(
    name: '_SettingsStore.twoFactorAuth',
    context: context,
  );

  @override
  bool get twoFactorAuth {
    _$twoFactorAuthAtom.reportRead();
    return super.twoFactorAuth;
  }

  @override
  set twoFactorAuth(bool value) {
    _$twoFactorAuthAtom.reportWrite(value, super.twoFactorAuth, () {
      super.twoFactorAuth = value;
    });
  }

  late final _$informationCollectionAtom = Atom(
    name: '_SettingsStore.informationCollection',
    context: context,
  );

  @override
  bool get informationCollection {
    _$informationCollectionAtom.reportRead();
    return super.informationCollection;
  }

  @override
  set informationCollection(bool value) {
    _$informationCollectionAtom.reportWrite(
      value,
      super.informationCollection,
      () {
        super.informationCollection = value;
      },
    );
  }

  late final _$bonusNotificationAtom = Atom(
    name: '_SettingsStore.bonusNotification',
    context: context,
  );

  @override
  bool get bonusNotification {
    _$bonusNotificationAtom.reportRead();
    return super.bonusNotification;
  }

  @override
  set bonusNotification(bool value) {
    _$bonusNotificationAtom.reportWrite(value, super.bonusNotification, () {
      super.bonusNotification = value;
    });
  }

  late final _$practiceReminderAtom = Atom(
    name: '_SettingsStore.practiceReminder',
    context: context,
  );

  @override
  bool get practiceReminder {
    _$practiceReminderAtom.reportRead();
    return super.practiceReminder;
  }

  @override
  set practiceReminder(bool value) {
    _$practiceReminderAtom.reportWrite(value, super.practiceReminder, () {
      super.practiceReminder = value;
    });
  }

  late final _$emailNotificationAtom = Atom(
    name: '_SettingsStore.emailNotification',
    context: context,
  );

  @override
  bool get emailNotification {
    _$emailNotificationAtom.reportRead();
    return super.emailNotification;
  }

  @override
  set emailNotification(bool value) {
    _$emailNotificationAtom.reportWrite(value, super.emailNotification, () {
      super.emailNotification = value;
    });
  }

  late final _$_SettingsStoreActionController = ActionController(
    name: '_SettingsStore',
    context: context,
  );

  @override
  void toggleSection(String section) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleSection',
    );
    try {
      return super.toggleSection(section);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleDarkMode() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleDarkMode',
    );
    try {
      return super.toggleDarkMode();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVideoResolution(String resolution) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.setVideoResolution',
    );
    try {
      return super.setVideoResolution(resolution);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleTwoFactorAuth() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleTwoFactorAuth',
    );
    try {
      return super.toggleTwoFactorAuth();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleInformationCollection() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleInformationCollection',
    );
    try {
      return super.toggleInformationCollection();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleBonusNotification() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleBonusNotification',
    );
    try {
      return super.toggleBonusNotification();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePracticeReminder() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.togglePracticeReminder',
    );
    try {
      return super.togglePracticeReminder();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleEmailNotification() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.toggleEmailNotification',
    );
    try {
      return super.toggleEmailNotification();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangePasswordTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onChangePasswordTap',
    );
    try {
      return super.onChangePasswordTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onStudyReminderTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onStudyReminderTap',
    );
    try {
      return super.onStudyReminderTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChatWithUsTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onChatWithUsTap',
    );
    try {
      return super.onChatWithUsTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCallUsTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onCallUsTap',
    );
    try {
      return super.onCallUsTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLeaveFeedbackTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onLeaveFeedbackTap',
    );
    try {
      return super.onLeaveFeedbackTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTermsAndConditionsTap() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
      name: '_SettingsStore.onTermsAndConditionsTap',
    );
    try {
      return super.onTermsAndConditionsTap();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
expandedSections: ${expandedSections},
isDarkMode: ${isDarkMode},
selectedVideoResolution: ${selectedVideoResolution},
twoFactorAuth: ${twoFactorAuth},
informationCollection: ${informationCollection},
bonusNotification: ${bonusNotification},
practiceReminder: ${practiceReminder},
emailNotification: ${emailNotification}
    ''';
  }
}
