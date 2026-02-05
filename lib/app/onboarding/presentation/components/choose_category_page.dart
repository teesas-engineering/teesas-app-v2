import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/enum/state_type.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/manage_account_card.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/stores/account_management_store/account_management_store.dart';
import '../../../_shared/stores/util_store/util_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/app_chip.dart';

class ChooseCategoryPage extends StatefulWidget {
  const ChooseCategoryPage({super.key});

  @override
  State<ChooseCategoryPage> createState() => _ChooseCategoryPageState();
}

class _ChooseCategoryPageState extends State<ChooseCategoryPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(context.read<UtilStore>().fetchClassCategories());
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<UtilStore>();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: PagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.height,
                  Text(
                    'Choose Category For User',
                    style: AppTypography.headlineMedium.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
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
                  Observer(
                    builder: (_) {
                      final accountStore = context
                          .read<AccountManagementStore>();
                      final selected = accountStore.selectedAccount;
                      if (selected == null) {
                        return const SizedBox.shrink();
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: ManageAccountCard(
                          name: selected.name,
                          role: AccountRole.student,
                          avatarUrl:
                              selected.gender?.getAvatar() ??
                              AppAssets.maleStudent,
                        ),
                      );
                    },
                  ),
                  24.height,
                  Observer(
                    builder: (_) {
                      if (store.coursesStatus.isLoading &&
                          store.classCategory.isEmpty) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(32),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      if (store.coursesStatus.isError &&
                          store.classCategory.isEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(32),
                          child: Text(
                            store.errorMessage ?? 'Failed to load categories',
                            style: AppTypography.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...store.classCategory.asMap().entries.map((entry) {
                            final index = entry.key;
                            final category = entry.value;
                            final selectedInSection =
                                (store.selectedCategories[category.id] ?? [])
                                    .length;
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom: index < store.classCategory.length - 1
                                    ? 24
                                    : 0,
                              ),
                              child: _CategorySection(
                                title: category.name,
                                selectedCount: selectedInSection,
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 12,
                                        mainAxisSpacing: 12,
                                        childAspectRatio: 2.5,
                                      ),
                                  itemCount: category.classes.length,
                                  itemBuilder: (context, index) {
                                    final courseClass = category.classes[index];
                                    final list =
                                        store.selectedCategories[category.id] ??
                                        [];
                                    return AppChip(
                                      text: courseClass.name,
                                      isActive: list.contains(courseClass.id),
                                      onTap: () =>
                                          store.toggleCategorySelection(
                                            category.id,
                                            courseClass.id,
                                          ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }),
                          32.height,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(Dimens.pagePadding),
          decoration: BoxDecoration(color: AppColors.white),
          child: Observer(
            builder: (_) {
              final count = store.totalClassSelections;
              final accountStore = context.read<AccountManagementStore>();
              final hasSelection = count > 0;
              final hasSelectedAccount = accountStore.selectedAccount != null;
              return AppButton(
                text: 'Proceed with $count Selection${count != 1 ? 's' : ''}',
                onPressed: () async{
                  final selection = store.selectedCategories;
                  accountStore.saveCategories(selection);
                },
                isDisabled: !hasSelection || !hasSelectedAccount,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection({
    required this.title,
    required this.selectedCount,
    required this.child,
  });

  final String title;
  final int selectedCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                title,
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
