import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/stores/util_store/util_store.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/base_modal_parent.dart';

class TermSelectionModal extends StatelessWidget {
  const TermSelectionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: const TermSelectionModal(),
    );
  }

  static Future<void> showWithStore(
      BuildContext context, UtilStore store) async {
    await ModalHelper.show(
      context,
      child: Provider<UtilStore>.value(
        value: store,
        child: const TermSelectionModal(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<UtilStore>(context);

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
                  // TermChip(
                  //   term: Term.firstTerm,
                  //   isSelected: store.selectedTerm == Term.firstTerm,
                  //   onTap: () => store.setTerm(Term.firstTerm),
                  // ),
                  // 12.height,
                  // TermChip(
                  //   term: Term.secondTerm,
                  //   isSelected: store.selectedTerm == Term.secondTerm,
                  //   onTap: () => store.setTerm(Term.secondTerm),
                  // ),
                  // 12.height,
                  // TermChip(
                  //   term: Term.thirdTerm,
                  //   isSelected: store.selectedTerm == Term.thirdTerm,
                  //   onTap: () => store.setTerm(Term.thirdTerm),
                  // ),
                ],
              );
            },
          ),
          32.height,
          Observer(
            builder: (_) {
              return AppButton(
                text: 'Proceed',
                onPressed: () async {
                  if (store.selectedTerm != null) {
                    Navigator.pop(context);
                  }
                },
                isDisabled: store.selectedTerm == null,
              );
            },
          ),
          24.height,
        ],
      ),
    );
  }
}
