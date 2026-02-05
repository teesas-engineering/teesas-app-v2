import 'package:flutter/material.dart';

import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class DraggableSheet extends StatefulWidget {
  const DraggableSheet({
    required this.child,
    super.key,
    this.initialChildSize = 0.7,
    this.title,
    this.description,
    this.showBack = true,
    this.cta,
  });

  final double? initialChildSize;
  final String? description;
  final String? title;
  final bool showBack;
  final Widget? cta;
  final Widget Function(ScrollController scrollController) child;

  @override
  State<DraggableSheet> createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheet> {
  late ValueNotifier<double> sheetSize;

  @override
  void initState() {
    // const double maxChildSize = 0.9;
    const double maxChildSize = 0.7;
    if (widget.initialChildSize! > maxChildSize) {
      sheetSize = ValueNotifier(maxChildSize);
    } else {
      sheetSize = ValueNotifier(maxChildSize);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: sheetSize,
      builder: (context, value, child) {
        return DraggableScrollableSheet(
          initialChildSize: value,
          maxChildSize: 0.95,
          minChildSize: .3,
          builder: (context, scrollController) {
            return DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  if (widget.title != null) ...[
                    Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title!,
                                  style: AppTypography.titleLarge.copyWith(
                                    color: AppColors.textPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if (widget.description != null) ...[
                                  8.height,
                                  Text(
                                    widget.description!,
                                    style: AppTypography.bodyMedium.copyWith(
                                      color: AppColors.color0A0A0A,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          if (widget.showBack)
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                color: AppColors.color808080,
                                Icons.cancel_outlined,
                              ),
                            ),
                        ],
                      ),
                    ),
                    16.height,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(thickness: 1, color: AppColors.colorC7C7C7C7),
                    ),
                    16.height,
                  ],
                  Expanded(child: widget.child(scrollController)),
                  if (widget.cta != null) ...[
                    16.height,
                    widget.cta!,
                    24.height,
                  ],
                ],
              ),
            );
          },
        );
      },
    );
  }
}
