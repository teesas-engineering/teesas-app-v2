import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../../../_shared/widgets/app_chip.dart';
import '../../../_shared/widgets/base_modal_parent.dart';
import 'filter_checkbox_item.dart';

class FilterModal extends StatelessWidget {
  const FilterModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: Provider<IndexStore>(
        create: (_) => IndexStore(),
        child: const FilterModal(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sortStore = Provider.of<IndexStore>(context);

    return BaseModalParent(
      title: 'Filters',
      description: 'Choose the appropriate filters below',
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filter List Section
            Text(
              'Filter List',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
            12.height,
            const FilterCheckboxItem(text: 'Primary', isSelected: true),
            12.height,
            const FilterCheckboxItem(text: 'Leader In Me', isSelected: true),
            24.height,
            // Sort Section
            Text(
              'Sort',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
            12.height,
            Observer(
              builder: (_) => Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  AppChip(
                    text: 'Favourite Video',
                    isActive: sortStore.currentIndex == 0,
                    onTap: () => sortStore.setIndex(0),
                  ),
                  AppChip(
                    text: 'Sort 2',
                    isActive: sortStore.currentIndex == 1,
                    onTap: () => sortStore.setIndex(1),
                  ),
                  AppChip(
                    text: 'Sort 3',
                    isActive: sortStore.currentIndex == 2,
                    onTap: () => sortStore.setIndex(2),
                  ),
                  AppChip(
                    text: 'Sort 4',
                    isActive: sortStore.currentIndex == 3,
                    onTap: () => sortStore.setIndex(3),
                  ),
                  AppChip(
                    text: 'Sort 5',
                    isActive: sortStore.currentIndex == 4,
                    onTap: () => sortStore.setIndex(4),
                  ),
                  AppChip(
                    text: 'Sort 6',
                    isActive: sortStore.currentIndex == 5,
                    onTap: () => sortStore.setIndex(5),
                  ),
                ],
              ),
            ),
            24.height,
          ],
        ),
        ),
      ),
    );
  }
}
