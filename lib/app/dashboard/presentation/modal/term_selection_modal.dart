import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/enum/term.dart';
import '../../../_shared/stores/category_store/category_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/base_modal_parent.dart';
import '../component/term_chip.dart';

class TermSelectionModal extends StatelessWidget {
  const TermSelectionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: Provider<CategoryStore>(
        create: (_) => CategoryStore(),
        child: const TermSelectionModal(),
      ),
    );
  }

  static Future<void> showWithStore(BuildContext context, CategoryStore store) async {
    await ModalHelper.show(
      context,
      child: Provider<CategoryStore>.value(
        value: store,
        child: const TermSelectionModal(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CategoryStore>(context);

    return BaseModalParent(
      title: 'Select Preferred Term',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Observer(
            builder: (_) {
              return Column(
                children: [
                  TermChip(
                    term: Term.firstTerm,
                    isSelected: store.selectedTerm == Term.firstTerm,
                    onTap: () => store.setTerm(Term.firstTerm),
                  ),
                  12.height,
                  TermChip(
                    term: Term.secondTerm,
                    isSelected: store.selectedTerm == Term.secondTerm,
                    onTap: () => store.setTerm(Term.secondTerm),
                  ),
                  12.height,
                  TermChip(
                    term: Term.thirdTerm,
                    isSelected: store.selectedTerm == Term.thirdTerm,
                    onTap: () => store.setTerm(Term.thirdTerm),
                  ),
                ],
              );
            },
          ),
          32.height,
          AppButton(
            text: 'Proceed',
            onPressed: () async {
              if (store.selectedTerm != null) {
                Navigator.pop(context);
              }
            },
            isDisabled: store.selectedTerm == null,
          ),
          24.height,
        ],
      ),
    );
  }
}
