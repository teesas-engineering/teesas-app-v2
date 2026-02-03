import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../store/settings_store.dart';
import '../widgets/expandable_settings_section.dart';
import '../widgets/settings_item.dart';
import '../widgets/settings_item_trailing.dart';
import '../widgets/settings_sub_item.dart';
import '../widgets/settings_sub_item_trailing.dart';
import '../../../../../router/main_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final SettingsStore _store = SettingsStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text(
                'Settings',
                style: AppTypography.headlineSmall.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),
              8.height,
              Text(
                'View the following details below.',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textModalSecondary,
                ),
              ),
              24.height,
              AppCard.secondary(
                borderRadius: 12.r,
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.white,
                child: Observer(
                  builder: (_) => Column(
                    children: [
                      ExpandableSettingsSection(
                        iconPath: AppAssets.icSecurity,
                        title: 'Security',
                        isExpanded:
                            _store.expandedSections['security'] ?? false,
                        onToggle: () => _store.toggleSection('security'),
                        children: [
                          SettingsSubItem(
                            iconPath: AppAssets.icChangePassword,
                            title: 'Change Password',
                            trailingType: SettingsSubItemTrailingType.chevron,
                            onTap: () =>
                                context.push(MainRouter.changePassword),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.ic2fa,
                            title: '2FA Authentication',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            toggleValue: _store.twoFactorAuth,
                            onToggleChanged: (_) =>
                                _store.toggleTwoFactorAuth(),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.ic2fa,
                            title: 'Information Collection',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            toggleValue: _store.informationCollection,
                            onToggleChanged: (_) =>
                                _store.toggleInformationCollection(),
                          ),
                        ],
                      ),
                      const Divider(height: 1, color: AppColors.dividerColor),
                      ExpandableSettingsSection(
                        iconPath: AppAssets.icVideo,
                        iconColor: AppColors.iconsWarning,
                        title: 'Video Resolution',
                        isExpanded:
                            _store.expandedSections['videoResolution'] ?? false,
                        onToggle: () => _store.toggleSection('videoResolution'),
                        children: [
                          SettingsSubItem(
                            iconPath: AppAssets.icResolution,
                            title: '480 P',
                            trailingType: SettingsSubItemTrailingType.radio,
                            isSelected:
                                _store.selectedVideoResolution == '480P',
                            onTap: () => _store.setVideoResolution('480P'),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icResolution,
                            title: '1080 P',
                            trailingType: SettingsSubItemTrailingType.radio,
                            isSelected:
                                _store.selectedVideoResolution == '1080P',
                            onTap: () => _store.setVideoResolution('1080P'),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icResolution,
                            title: '4K',
                            trailingType: SettingsSubItemTrailingType.radio,
                            isSelected: _store.selectedVideoResolution == '4K',
                            onTap: () => _store.setVideoResolution('4K'),
                          ),
                        ],
                      ),
                      const Divider(height: 1, color: AppColors.dividerColor),
                      ExpandableSettingsSection(
                        iconPath: AppAssets.icPushNotification,
                        iconColor: AppColors.textSecondary,
                        title: 'Push Notification',
                        isExpanded:
                            _store.expandedSections['pushNotification'] ??
                            false,
                        onToggle: () =>
                            _store.toggleSection('pushNotification'),
                        children: [
                          SettingsSubItem(
                            iconPath: AppAssets.icReminder,
                            title: 'Study Reminder',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            onTap: _store.onStudyReminderTap,
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icReminder,
                            title: 'Bonus Notification',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            toggleValue: _store.bonusNotification,
                            onToggleChanged: (_) =>
                                _store.toggleBonusNotification(),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icReminder,
                            title: 'Practice Reminder',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            toggleValue: _store.practiceReminder,
                            onToggleChanged: (_) =>
                                _store.togglePracticeReminder(),
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icReminder,
                            title: 'Email Notification',
                            trailingType: SettingsSubItemTrailingType.toggle,
                            toggleValue: _store.emailNotification,
                            onToggleChanged: (_) =>
                                _store.toggleEmailNotification(),
                          ),
                        ],
                      ),
                      const Divider(height: 1, color: AppColors.dividerColor),
                      SettingsItem(
                        iconPath: AppAssets.icDarkMode,
                        iconColor: AppColors.textSecondary,
                        title: 'Dark Mode',
                        trailingType: SettingsItemTrailingType.toggle,
                        toggleValue: _store.isDarkMode,
                        onToggleChanged: (_) => _store.toggleDarkMode(),
                      ),
                      const Divider(height: 1, color: AppColors.dividerColor),
                      ExpandableSettingsSection(
                        iconPath: AppAssets.icContactUs,
                        iconColor: AppColors.iconsWarning,
                        title: 'Contact Us',
                        isExpanded:
                            _store.expandedSections['contactUs'] ?? false,
                        onToggle: () => _store.toggleSection('contactUs'),
                        children: [
                          SettingsSubItem(
                            iconPath: AppAssets.icChat,
                            title: 'Chat with Us',
                            trailingType: SettingsSubItemTrailingType.chevron,
                            onTap: _store.onChatWithUsTap,
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icCallUs,
                            title: 'Call Us',
                            trailingType: SettingsSubItemTrailingType.chevron,
                            onTap: _store.onCallUsTap,
                          ),
                          SettingsSubItem(
                            iconPath: AppAssets.icFeedback,
                            title: 'Leave a Feedback',
                            trailingType: SettingsSubItemTrailingType.chevron,
                            onTap: _store.onLeaveFeedbackTap,
                          ),
                        ],
                      ),
                      const Divider(height: 1, color: AppColors.dividerColor),
                      SettingsItem(
                        iconPath: AppAssets.icTerms,
                        iconColor: AppColors.iconsWarning,
                        title: 'Terms & Conditions',
                        trailingType: SettingsItemTrailingType.chevron,
                        onTap: () =>
                            context.push(MainRouter.termsAndConditions),
                      ),
                    ],
                  ),
                ),
              ),
              40.height,
            ],
          ),
        ),
      ),
    );
  }
}
