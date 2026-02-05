import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../widgets/terms_content.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text(
                'Terms & Conditions',
                style: AppTypography.headlineSmall.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
              ),
              8.height,
              Text(
                'View the following details below.',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.color0A0A0A,
                ),
              ),
              24.height,
              const TermsContent(),
              40.height,
            ],
          ),
        ),
      ),
    );
  }
}
