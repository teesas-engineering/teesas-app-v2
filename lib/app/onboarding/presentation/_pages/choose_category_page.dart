import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/leader_in_me_category.dart';
import '../../../_shared/enum/matric_category.dart';
import '../../../_shared/enum/nigerian_languages_category.dart';
import '../../../_shared/enum/preschool_category.dart';
import '../../../_shared/enum/primary_school_category.dart';
import '../../../_shared/enum/secondary_school_category.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/app_chip.dart';
import '../stores/onboarding_store.dart';

class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<OnboardingStore>(context);

    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: PagePadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.height,
                    Text(
                      'Choose Category For User',
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.height,
                    Text(
                      'Student User 1 (1/2)',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    24.height,
                    // User info card
                    AppCard.secondary(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: AppColors.bgBrandLight,
                            child: const Icon(
                              Icons.person,
                              color: AppColors.bgBrand,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jane Omokewe',
                                  style: AppTypography.titleMedium.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                4.height,
                                Text(
                                  'Student',
                                  style: AppTypography.bodySmall.copyWith(
                                    color: AppColors.bgBrand,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    24.height,
                    // Preschool section
                    _CategorySection(
                      title: 'Preschool',
                      selectedCount: store.selectedPreschoolCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: PreschoolCategory.values.length,
                          itemBuilder: (context, index) {
                            final category = PreschoolCategory.values[index];
                            final isSelected = store.selectedPreschoolCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () =>
                                  store.togglePreschoolCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    24.height,
                    // Primary School section
                    _CategorySection(
                      title: 'Primary School',
                      selectedCount:
                          store.selectedPrimarySchoolCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: PrimarySchoolCategory.values.length,
                          itemBuilder: (context, index) {
                            final category =
                                PrimarySchoolCategory.values[index];
                            final isSelected = store
                                .selectedPrimarySchoolCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () =>
                                  store.togglePrimarySchoolCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    24.height,
                    // Secondary School section
                    _CategorySection(
                      title: 'Secondary School',
                      subtitle: 'Entrance Exam Prep',
                      selectedCount:
                          store.selectedSecondarySchoolCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: SecondarySchoolCategory.values.length,
                          itemBuilder: (context, index) {
                            final category =
                                SecondarySchoolCategory.values[index];
                            final isSelected = store
                                .selectedSecondarySchoolCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () =>
                                  store.toggleSecondarySchoolCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    24.height,
                    // Nigerian Languages section
                    _CategorySection(
                      title: 'Nigerian Languages',
                      selectedCount:
                          store.selectedNigerianLanguagesCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: NigerianLanguagesCategory.values.length,
                          itemBuilder: (context, index) {
                            final category =
                                NigerianLanguagesCategory.values[index];
                            final isSelected = store
                                .selectedNigerianLanguagesCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () => store
                                  .toggleNigerianLanguagesCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    24.height,
                    // Leader In Me section
                    _CategorySection(
                      title: 'Leader In Me',
                      selectedCount: store.selectedLeaderInMeCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: LeaderInMeCategory.values.length,
                          itemBuilder: (context, index) {
                            final category = LeaderInMeCategory.values[index];
                            final isSelected = store
                                .selectedLeaderInMeCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () =>
                                  store.toggleLeaderInMeCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    24.height,
                    // Matric section
                    _CategorySection(
                      title: 'Matric',
                      selectedCount: store.selectedMatricCategories.length,
                      child: Observer(
                        builder: (_) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 2.5,
                              ),
                          itemCount: MatricCategory.values.length,
                          itemBuilder: (context, index) {
                            final category = MatricCategory.values[index];
                            final isSelected = store.selectedMatricCategories
                                .contains(category);
                            return AppChip(
                              text: category.displayName,
                              isActive: isSelected,
                              onTap: () => store.toggleMatricCategory(category),
                            );
                          },
                        ),
                      ),
                    ),
                    32.height,
                  ],
                ),
              ),
            ),
          ),
          // Proceed button at the bottom
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppColors.white),
            child: Observer(
              builder: (_) {
                final count = store.totalSelections;
                final text =
                    'Proceed with $count Selection${count != 1 ? 's' : ''}';
                return AppButton(
                  text: text,
                  onPressed: () async {
                    // Handle proceed logic
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection({
    required this.title,
    required this.selectedCount,
    required this.child,
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final int selectedCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(width: 8),
              Text(
                '($subtitle)',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
            if (selectedCount > 0) ...[
              const SizedBox(width: 8),
              Text(
                '($selectedCount Selected)',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.bgBrand,
                ),
              ),
            ],
          ],
        ),
        16.height,
        AppCard.secondary(child: child),
      ],
    );
  }
}
