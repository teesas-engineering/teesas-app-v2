import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/dialog_helper.dart';
import '../../widgets/app_button.dart';
import '../../widgets/base_dialog_parent.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    this.title,
    this.subtitle,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.image,
    this.primaryButtonIcon,
    this.secondaryButtonIcon,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
  });

  final String? title;
  final String? subtitle;
  final String? primaryButtonText;
  final String? secondaryButtonText;
  final String? image;
  final Widget? primaryButtonIcon;
  final Widget? secondaryButtonIcon;
  final Future<void> Function()? onPrimaryPressed;
  final Future<void> Function()? onSecondaryPressed;

  static Future<void> show(
    BuildContext context, {
    String? title,
    String? subtitle,
    String? primaryButtonText,
    String? secondaryButtonText,
    String? image,
    Widget? primaryButtonIcon,
    Widget? secondaryButtonIcon,
    Future<void> Function()? onPrimaryPressed,
    Future<void> Function()? onSecondaryPressed,
  }) async {
    await DialogHelper.show(
      context,
      child: ConfirmationDialog(
        title: title,
        subtitle: subtitle,
        primaryButtonText: primaryButtonText,
        secondaryButtonText: secondaryButtonText,
        image: image,
        primaryButtonIcon: primaryButtonIcon,
        secondaryButtonIcon: secondaryButtonIcon,
        onPrimaryPressed: onPrimaryPressed,
        onSecondaryPressed: onSecondaryPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Default values
    final dialogTitle = title ?? 'Delete User!';
    final dialogSubtitle =
        subtitle ?? 'Are you sure you want to delete this user?';
    final primaryText = primaryButtonText ?? 'Delete';
    final secondaryText = secondaryButtonText ?? "No, I don't";
    final dialogImage = image ?? AppAssets.successImage;

    return BaseDialogParent(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image
          if (dialogImage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: Dimens.pagePadding),
              child: Image.asset(
                dialogImage,
                height: 120,
                width: 120,
                fit: BoxFit.contain,
              ),
            ),

          // Title
          Text(
            dialogTitle,
            style: AppTypography.headlineMedium.copyWith(
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: Dimens.buttonPadding),

          // Subtitle
          Text(
            dialogSubtitle,
            style: AppTypography.bodyLarge.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: Dimens.pagePadding * 2),

          // Buttons
          Row(
            children: [
              // Primary button (left) - Delete button with pink background
              Expanded(
                child: AppButton.secondary(
                  negativeBorder: true,
                  onPressed: () async {
                    await onPrimaryPressed?.call();
                    if (context.mounted) {
                      context.pop();
                    }
                  },
                  text: primaryText,
                ),
              ),

              const SizedBox(width: Dimens.buttonPadding),

              // Secondary button (right) - Cancel button with white background and green border
              Expanded(
                child: AppButton(
                  onPressed: () async {
                    await onSecondaryPressed?.call();
                    if (context.mounted) {
                      context.pop();
                    }
                  },
                  text: secondaryText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
