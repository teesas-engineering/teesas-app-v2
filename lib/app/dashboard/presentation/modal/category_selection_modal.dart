import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/enum/state_type.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/components/draggable_sheet.dart';
import '../../../_shared/stores/util_store/util_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../component/category_chip.dart';
import '../component/category_section.dart';

class CategorySelectionModal extends StatefulWidget {
  const CategorySelectionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: const CategorySelectionModal(),
    );
  }

  @override
  State<CategorySelectionModal> createState() => _CategorySelectionModalState();
}

class _CategorySelectionModalState extends State<CategorySelectionModal> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UtilStore>().fetchClassCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<UtilStore>();

    return DraggableSheet(
      title: 'Choose Your Category',
      description:
          "Today is a new day. It's your day. You shape it. Sign in to start managing your projects.",
      cta: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AppButton(
          text: 'Proceed',
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
      ),
      child: (controller) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            controller: controller,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              controller: controller,
              child: Observer(
                builder: (_) {
                  if (store.coursesStatus.isLoading &&
                      store.classCategory.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(32),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (store.coursesStatus.isError &&
                      store.classCategory.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        store.errorMessage ?? 'Failed to load categories',
                      ),
                    );
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...store.classCategory.map((category) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: CategorySection(
                            title: category.name,
                            subscriptionCount: 0,
                            child: GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
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
                                return Observer(
                                  builder: (_) {
                                    final isSelected = store.selectedClassIds
                                        .contains(courseClass.id);
                                    return CategoryChip(
                                      text: courseClass.name,
                                      isSelected: isSelected,
                                      onTap: () {}
                                         // store.toggleClass(courseClass.id),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      }),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
