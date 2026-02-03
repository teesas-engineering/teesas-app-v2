import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_card.dart';

class TermsContent extends StatelessWidget {
  const TermsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard.secondary(
      borderRadius: 12.r,
      padding: EdgeInsets.all(16.w),
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TermsParagraph(
            text:
                "Teesas provides high quality video tutorials from Africa's best "
                'teachers, that explain foundational concepts with delivery in English '
                'and major local languages to deepen understanding. We believe that '
                'learning should be available to everyone who seeks it without any '
                'barrier. Our purpose centres on eliminating main barriers to tutor '
                'and student engagement.',
          ),
          24.height,
          const TermsParagraph(
            text:
                'Teesas provides a platform where educators and learners engage '
                'seamlessly and efficiently, with the aim of facilitating a fun and '
                'effective learning experience via the deployment of technology and '
                'the adoption of local culture and dialects.',
          ),
          24.height,
          const TermsParagraph(
            text:
                'Our commitment to democratizing access to high quality education '
                'is unwavering!',
          ),
        ],
      ),
    );
  }
}

class TermsParagraph extends StatelessWidget {
  const TermsParagraph({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTypography.bodyMedium.copyWith(
        color: AppColors.black,
        height: 1.6,
      ),
    );
  }
}
