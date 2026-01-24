import 'package:flutter/material.dart';

import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppDatePicker {
  AppDatePicker._();

  static Future<DateTime?> pickDate(
    BuildContext context, {
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    return await showDatePicker(
      context: context,
      initialDate:
          initialDate ??
          DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: firstDate ?? DateTime(1950),
      lastDate: lastDate ?? DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.bgBrand,
              onPrimary: AppColors.white,
              surface: AppColors.white,
              onSurface: AppColors.textPrimary,
            ),
            datePickerTheme: DatePickerThemeData(
              backgroundColor: AppColors.white,
              headerBackgroundColor: AppColors.bgBrand,
              headerForegroundColor: AppColors.white,
              dayStyle: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
              weekdayStyle: AppTypography.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
              yearStyle: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
