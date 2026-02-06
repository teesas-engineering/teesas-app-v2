import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_divider.dart';
import '../../../_shared/widgets/app_progress_header.dart';
import '../components/assessment_action_button.dart';
import '../components/option_card.dart';
import '../components/question_progress_indicator.dart';
import '../stores/assessment_store.dart';

class AssessmentQuestionScreen extends StatefulWidget {
  const AssessmentQuestionScreen({super.key});

  @override
  State<AssessmentQuestionScreen> createState() =>
      _AssessmentQuestionScreenState();
}

class _AssessmentQuestionScreenState extends State<AssessmentQuestionScreen> {
  late final AssessmentStore _store;

  @override
  void initState() {
    super.initState();
    _store = AssessmentStore();
  }

  void _handleNext() {
    if (_store.selectedOptionIndex == null) {
      return;
    }

    if (!_store.isAnswerSubmitted) {
      _store.submitAnswer();
    } else {
      // Check if it's the last question
      if (_store.isLastQuestion) {
        // Navigate to assessment results screen
        unawaited(context.push(MainRouter.assessmentResult));
      } else {
        // Go to next question
        _store.nextQuestion();
      }
    }
  }

  void _handlePrevious() {
    if (_store.currentQuestionIndex > 0) {
      _store.previousQuestion();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppProgressHeader(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    ColoredBox(
                      color: AppColors.colorF5F9FB,
                      child: Column(
                        children: [
                          24.verticalSpace,
                          Text(
                            'Mathematics Assessment Questions',
                            style: AppTypography.titleMedium.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.color0F172A,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          12.verticalSpace,
                          Observer(
                            builder: (_) {
                              return QuestionProgressIndicator(
                                totalQuestions: _store.totalQuestions,
                                currentIndex: _store.currentQuestionIndex,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 112.w,
                      width: 112.w,
                      padding: EdgeInsets.all(12.r),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r),
                        ),
                        border: Border.all(
                          color: AppColors.colorEFF1F5,
                          width: 2.w,
                        ),
                      ),
                      child: Image.asset(
                        AppAssets.testImage, // Placeholder
                        fit: BoxFit.cover,
                      ),
                    ),
                    24.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        _store.questionText,
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.color1E1C1C,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    32.verticalSpace,
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          16.verticalSpace,
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _store.options.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 16.h),
                                child: Observer(
                                  builder: (_) {
                                    // Access observables here to ensure tracking
                                    final isSelected =
                                        _store.selectedOptionIndex == index;
                                    final isSubmitted =
                                        _store.isAnswerSubmitted;
                                    final isCorrect =
                                        _store.correctOptionIndex == index;
                                    final isWrong =
                                        isSubmitted &&
                                        isSelected &&
                                        _store.correctOptionIndex != index;
                                    final shouldHighlightCorrect =
                                        isSubmitted && isCorrect;

                                    return OptionCard(
                                      text: _store.options[index],
                                      optionLabel: String.fromCharCode(
                                        65 + index,
                                      ), // A, B, C...
                                      isSelected: isSelected,
                                      isSubmitted: isSubmitted,
                                      isCorrect: isCorrect,
                                      isWrong: isWrong,
                                      shouldHighlightCorrect:
                                          shouldHighlightCorrect,
                                      onTap: () => _store.selectOption(index),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AssessmentActionButton(
                                      icon: AppAssets.icCaution,
                                      label: 'Report an issue',
                                      onTap: () {},
                                    ),
                                    AssessmentActionButton(
                                      icon: AppAssets.icBookmark,
                                      label: 'Bookmark',
                                      onTap: () {},
                                      isTrailing: true,
                                    ),
                                  ],
                                ),
                                AppDivider(height: 16.h),
                                Observer(
                                  builder: (_) {
                                    if (!_store.isAnswerSubmitted) {
                                      return const SizedBox.shrink();
                                    }
                                    return Column(
                                      children: [
                                        24.verticalSpace,
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(16.r),
                                          decoration: BoxDecoration(
                                            color: AppColors.bgBrandLight,
                                            borderRadius: BorderRadius.circular(
                                              8.r,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                'Explanation',
                                                style: AppTypography.bodyLarge
                                                    .copyWith(
                                                      color: AppColors
                                                          .bgBrandSecondary,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                textAlign: TextAlign.center,
                                              ),
                                              8.verticalSpace,
                                              RichText(
                                                text: TextSpan(
                                                  text: 'Option D',
                                                  style: AppTypography
                                                      .bodyMedium
                                                      .copyWith(
                                                        color: AppColors
                                                            .color1E1C1C,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          ' is the answer because we have the letter F also appear in of just like foot.',
                                                      style: AppTypography
                                                          .bodyMedium
                                                          .copyWith(
                                                            color: AppColors
                                                                .color1E1C1C,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          16.verticalSpace,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ColoredBox(
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            bottom:
                MediaQuery.viewPaddingOf(context).bottom +
                (Platform.isAndroid ? 16.h : 0),
          ),
          child: Row(
            children: [
              Expanded(
                child: AppButton.secondary(
                  text: 'Previous',
                  onPressed: () async => _handlePrevious(),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: Observer(
                  builder: (_) {
                    return AppButton(
                      text: 'Next',
                      onPressed: () async => _handleNext(),
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
