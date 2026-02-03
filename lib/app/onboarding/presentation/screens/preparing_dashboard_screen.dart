import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/app_progress_bar.dart';

class PreparingDashboardScreen extends StatefulWidget {
  const PreparingDashboardScreen({super.key});

  @override
  State<PreparingDashboardScreen> createState() =>
      _PreparingDashboardScreenState();
}

class _PreparingDashboardScreenState extends State<PreparingDashboardScreen> {
  double _progress = 0.0;
  Timer? _progressTimer;

  @override
  void initState() {
    super.initState();
    _startProgressAnimation();
  }

  void _startProgressAnimation() {
    _progressTimer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      setState(() {
        if (_progress < 0.99) {
          _progress += 0.01;
        } else {
          _progress = 0.99;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _progressTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final progressPercentage = (_progress * 100).toInt();

    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      body: SafeArea(
        child: Center(
          child: PagePadding(
            child: AppCard.primary(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Success image
                  Image.asset(
                    AppAssets.successImage,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  32.height,
                  // Awesome heading
                  Text(
                    'Awesome!!!',
                    style: AppTypography.headlineLarge.copyWith(
                      color: AppColors.textBrandDark,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  16.height,
                  // Description text
                  Text(
                    'We are preparing your custom lesson dashboard.',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  32.height,
                  // Progress bar with percentage
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.bgSecondary,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.colorE2E8F0,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AppProgressBar(
                                value: _progress,
                                height: 8,
                                backgroundColor: AppColors.colorE2E8F0,
                                progressColor: AppColors.colorFF9F1C,
                                borderRadius: BorderRadius.circular(4),
                                margin: EdgeInsets.zero,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '$progressPercentage%',
                              style: AppTypography.bodyMedium.copyWith(
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
