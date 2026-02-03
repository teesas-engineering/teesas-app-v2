import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({required this.value, this.onChanged, super.key});

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final outerRadius = 14.r;
    final innerRadius = 12.r;

    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(!value) : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 32.w,
        height: 20.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(outerRadius),
          gradient: value
              ? const LinearGradient(
                  colors: [
                    Color(0xFFAED500), // Yellow-green at top
                    Color(0xFF00A86B), // Teal-green at bottom
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: value ? null : const Color(0xFFB0B0B0),
        ),
        padding: value
            ? EdgeInsets.only(top: 2.w, left: 2.w, right: 2.w, bottom: 4.w)
            : EdgeInsets.all(2.w),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(innerRadius),
          ),
          padding: EdgeInsets.all(2.w),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 16.w,
              height: 16.w,
              decoration: BoxDecoration(
                color: value
                    ? const Color(0xFF6BBF00)
                    : const Color(0xFFB0B0B0),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
