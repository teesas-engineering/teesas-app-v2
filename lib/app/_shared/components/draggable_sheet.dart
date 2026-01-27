import 'package:flutter/material.dart';

class DraggableSheet extends StatefulWidget {
  final double? initialChildSize;
  final Widget Function(ScrollController scrollController) headerWidget;
  final Widget Function(ScrollController scrollController) child;
  const DraggableSheet({
    super.key,
    this.initialChildSize = 0.7,
    required this.child,
    required this.headerWidget,
  });

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
      builder: (BuildContext context, double value, Widget? child) {
        return DraggableScrollableSheet(
            shouldCloseOnMinExtent: false,
            initialChildSize: value,
            maxChildSize: 0.9,
            expand: true,
            minChildSize: .2,
            builder: (BuildContext context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16))),
                child: Column(
                  children: [
                    widget.headerWidget(scrollController),
                    Expanded(child: widget.child(scrollController))
                  ],
                ),
              );
            });
      },
    );
  }
}
