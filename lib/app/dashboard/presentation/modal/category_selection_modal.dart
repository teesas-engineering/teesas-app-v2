import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/components/draggable_sheet.dart';
import '../../../_shared/enum/preschool_category.dart';
import '../../../_shared/enum/primary_school_category.dart';
import '../../../_shared/enum/secondary_school_category.dart';
import '../../../_shared/stores/category_store/category_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../component/category_chip.dart';
import '../component/category_section.dart';

class CategorySelectionModal extends StatelessWidget {
  const CategorySelectionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: const CategorySelectionModal(),
    );
  }


  @override
  Widget build(BuildContext context) {
    final store = context.read<CategoryStore>();

    return DraggableSheet(
      title: 'Choose Your Category',
      description:
          "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
      cta:Padding(padding:const EdgeInsetsGeometry.symmetric(horizontal: 24,vertical: 16),

      child:  AppButton(
        text: 'Proceed',
        onPressed: () async {
          Navigator.pop(context);
        },
      ),),
      child: (controller){
        return Padding(padding: const EdgeInsets.only(right: 8),
        child: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            controller: controller,

            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              controller: controller,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategorySection(
                    title: 'Preschool',
                    subscriptionCount: 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.5,
                      ),
                      itemCount: PreschoolCategory.values.length,
                      itemBuilder: (context, index) {
                        final category = PreschoolCategory.values[index];
                        final hasSubscription = index == 0; // Reception has subscription
                        return Observer(builder: (_){
                          final isSelected = store.selectedPreschoolCategories
                              .contains(category);
                          return CategoryChip(
                            text: category.displayName,
                            isSelected: isSelected,
                            hasSubscription: hasSubscription,
                            onTap: () => store.togglePreschoolCategory(category),
                          );
                        });
                      },
                    ),
                  ),
                  24.height,
                  // Primary School Section
                  CategorySection(
                    title: 'Primary School',
                    subscriptionCount: 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.5,
                      ),
                      itemCount: PrimarySchoolCategory.values.length,
                      itemBuilder: (context, index) {
                        final category = PrimarySchoolCategory.values[index];
                        final hasSubscription = category == PrimarySchoolCategory.grade4;
                        return Observer(builder: (_){
                          final isSelected = store.selectedPrimarySchoolCategories
                              .contains(category);
                          return CategoryChip(
                            text: category.displayName,
                            isSelected: isSelected,
                            hasSubscription: hasSubscription,
                            onTap: () => store.togglePrimarySchoolCategory(category),
                          );
                        });
                      },
                    ),
                  ),
                  24.height,
                  // Secondary School Section
                  CategorySection(
                    title: 'Secondary School',
                    subtitle: 'Entrance Exam Prep',
                    subscriptionCount: 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.5,
                      ),
                      itemCount: SecondarySchoolCategory.values.length,
                      itemBuilder: (context, index) {
                        final category = SecondarySchoolCategory.values[index];
                        final hasSubscription =
                            category == SecondarySchoolCategory.nationalUnity;
                        return Observer(builder: (_){
                          final isSelected = store.selectedSecondarySchoolCategories
                              .contains(category);
                          return CategoryChip(
                            text: category.displayName,
                            isSelected: isSelected,
                            hasSubscription: hasSubscription,
                            onTap: () => store.toggleSecondarySchoolCategory(category),
                          );
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),);
      },
    );
  }
}
