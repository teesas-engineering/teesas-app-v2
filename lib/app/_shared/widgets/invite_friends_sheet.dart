import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class InviteFriendsSheet extends StatelessWidget {
  const InviteFriendsSheet({required this.referralCode, super.key});

  final String referralCode;

  String get _shareText =>
      'Join me on Teesas! Use my referral code $referralCode to sign up and we both earn rewards. Download now: https://teesas.com/download';

  Future<void> _shareToApp(String urlScheme, String fallbackUrl) async {
    final Uri uri = Uri.parse(urlScheme);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Fallback to system share if app is not installed
      await SharePlus.instance.share(ShareParams(text: _shareText));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePadding,
        24.h,
        Dimens.pagePadding,
        MediaQuery.viewPaddingOf(context).bottom + 16.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Invite Friends',
                style: AppTypography.displaySmall.copyWith(
                  fontSize: 20.sp,
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                borderRadius: BorderRadius.circular(20.r),
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.close, // Or a custom close icon if you prefer
                    size: 24.w,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          24.height,
          Text(
            'Share Via',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
          24.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ShareButton(
                icon: FontAwesomeIcons.tiktok,
                color: Colors.black, // TikTok brand color
                onTap: () async {
                  // TikTok sharing is complex, often involves saving video or using standard share
                  await SharePlus.instance.share(ShareParams(text: _shareText));
                },
              ),
              _ShareButton(
                icon: FontAwesomeIcons.whatsapp,
                color: const Color(0xFF25D366),
                borderColor: const Color(0xFF25D366),
                onTap: () => _shareToApp(
                  'whatsapp://send?text=${Uri.encodeComponent(_shareText)}',
                  '',
                ),
              ),
              _ShareButton(
                icon: FontAwesomeIcons.instagram,
                isGradient: true,
                onTap: () async {
                  // Instagram mostly supports sharing images to stories.
                  // Simple text sharing isn't standard via url scheme for DM.
                  // Fallback to clipboard or system share
                  await SharePlus.instance.share(ShareParams(text: _shareText));
                },
              ),
              _ShareButton(
                icon: FontAwesomeIcons.facebookF,
                color: const Color(0xFF1877F2),
                borderColor: const Color(0xFF1877F2),
                onTap: () async {
                  // Facebook sharing via URL usually
                  final url =
                      'https://www.facebook.com/sharer/sharer.php?u=${Uri.encodeComponent('https://teesas.com')}&quote=${Uri.encodeComponent(_shareText)}';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    await SharePlus.instance.share(
                      ShareParams(text: _shareText),
                    );
                  }
                },
              ),
              _ShareButton(
                icon: FontAwesomeIcons.xTwitter,
                color: Colors.black,
                borderColor: Colors.black,
                onTap: () => _shareToApp(
                  'twitter://post?message=${Uri.encodeComponent(_shareText)}',
                  'https://twitter.com/intent/tweet?text=${Uri.encodeComponent(_shareText)}',
                ),
              ),
            ],
          ),
          32.height,
        ],
      ),
    );
  }
}

class _ShareButton extends StatelessWidget {
  const _ShareButton({
    required this.icon,
    this.onTap,
    this.color,
    this.borderColor,
    this.isGradient = false,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        width: 50.w,
        height: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isGradient
              ? null
              : Border.all(
                  color: borderColor ?? AppColors.colorD9E8E8,
                  width: 1.5,
                ),
          gradient: isGradient
              ? const LinearGradient(
                  colors: [
                    Color(0xFF833AB4),
                    Color(0xFFFD1D1D),
                    Color(0xFFFCAF45),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )
              : null,
          color: isGradient ? null : AppColors.white,
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 24.w,
          color: isGradient ? Colors.white : (color ?? AppColors.textPrimary),
        ),
      ),
    );
  }
}
