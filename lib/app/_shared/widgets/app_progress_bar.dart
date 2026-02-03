import 'dart:async';

import 'package:flutter/material.dart';

import '../../../common/style_guide/colors.dart';


class AppProgressBar extends StatefulWidget {
  const AppProgressBar({
    required this.value,
    super.key,
    this.height = 4,
    this.duration = const Duration(milliseconds: 400),
    this.backgroundColor,
    this.progressColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.margin,
    this.progressBoxShadow,
  });
  final double value;
  final double height;
  final Duration duration;
  final Color? backgroundColor;
  final Color? progressColor;
  final Color? borderColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final List<BoxShadow>? progressBoxShadow;

  @override
  State<AppProgressBar> createState() => _AppProgressBarState();
}

class _AppProgressBarState extends State<AppProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _oldValue = 0;

  @override
  void initState() {
    super.initState();
    _oldValue = widget.value;
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween<double>(
      begin: _oldValue,
      end: widget.value,
    ).animate(_controller);
    unawaited(_controller.forward());
  }

  @override
  void didUpdateWidget(AppProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _oldValue = oldWidget.value;
      _animation = Tween<double>(
        begin: _oldValue,
        end: widget.value,
      ).animate(_controller);
      _controller.reset();
      unawaited(_controller.forward());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        widget.borderRadius ?? const BorderRadius.all(Radius.circular(20));
    final backgroundColor =
        widget.backgroundColor ?? AppColors.colorE2E8F0;
    final progressColor = widget.progressColor ?? AppColors.colorFF9F1C;
    final borderColor = widget.borderColor;
    final borderWidth = widget.borderWidth;
    final margin = widget.margin ?? const EdgeInsets.symmetric(horizontal: 10);

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: widget.height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backgroundColor,
          border: borderColor != null && borderWidth != null
              ? Border.all(color: borderColor, width: borderWidth)
              : null,
        ),
        margin: margin,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: _animation.value.clamp(0.0, 1.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: progressColor,
                  borderRadius: borderRadius,
                  boxShadow: widget.progressBoxShadow,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
