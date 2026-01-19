part of 'app_theme.dart';

extension AppThemeContext on BuildContext {
  AppStyles get appStyles => AppTheme.of(this).appStyles(this);
  AppColors get appColors => AppTheme.of(this).appColors(this);
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;

  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double bottomPadding([double padding = 0]) {
    return mediaQuery.padding.bottom + padding;
  }

  double topPadding([double padding = 0]) {
    return mediaQuery.padding.top + padding;
  }

  double get keyboardHight => mediaQuery.viewInsets.bottom;
}
