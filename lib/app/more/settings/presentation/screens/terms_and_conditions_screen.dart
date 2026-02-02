import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../../../../_shared/widgets/app_card.dart';

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
                  color: AppColors.textModalSecondary,
                ),
              ),
              24.height,
              const _TermsContent(),
              40.height,
            ],
          ),
        ),
      ),
    );
  }
}

class _TermsContent extends StatelessWidget {
  const _TermsContent();

  @override
  Widget build(BuildContext context) {
    return AppCard.secondary(
      borderRadius: 12.r,
      padding: EdgeInsets.all(16.w),
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildParagraph(
            "Teesas provides high quality video tutorials from Africa's best "
            'teachers, that explain foundational concepts with delivery in English '
            'and major local languages to deepen understanding. We believe that '
            'learning should be available to everyone who seeks it without any '
            'barrier. Our purpose centres on eliminating main barriers to tutor '
            'and student engagement.',
          ),
          24.height,
          _buildParagraph(
            'Teesas provides a platform where educators and learners engage '
            'seamlessly and efficiently, with the aim of facilitating a fun and '
            'effective learning experience via the deployment of technology and '
            'the adoption of local culture and dialects.',
          ),
          24.height,
          _buildParagraph(
            'Our commitment to democratizing access to high quality education '
            'is unwavering!',
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: AppTypography.bodyMedium.copyWith(
        color: AppColors.black,
        height: 1.6,
      ),
    );
  }
}
