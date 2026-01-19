import 'package:flutter/material.dart';

import '../style_guide/colors.dart';
import '../style_guide/style_guide.dart';

part 'app_colors.dart';
part 'app_text_styles.dart';
part 'theme_extension.dart';

class AppTheme extends StatefulWidget {
  const AppTheme({super.key, this.child});

  final Widget? child;

  @override
  State<StatefulWidget> createState() => _AppThemeState();

  static _AppThemeState of(BuildContext context) {
    final _InheritedStateContainer? inheritedStateContainer = context
        .dependOnInheritedWidgetOfExactType();
    if (inheritedStateContainer == null) {
      return _AppThemeState();
    } else {
      return inheritedStateContainer.data;
    }
  }
}

class _AppThemeState extends State<AppTheme> {
  String get currentPackageName => 'app.teesas';

  ThemeData get lightTheme => ThemeData(
    useMaterial3: true,

    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xfff8F8F8),
    iconTheme: const IconThemeData(size: 24, color: AllColors.iconsPrimary),
    highlightColor: Colors.transparent,

    splashColor: AllColors.bgButtonPrimarySplash,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: const Color(0xfff8F8F8),
      titleSpacing: 0,
      titleTextStyle: AllStyles.titleLarge.copyWith(
        color: AllColors.textPrimary,
      ),
    ),
    dividerColor: AllColors.borderPrimary,
    primaryColor: AllColors.bgBrand,
    fontFamily: AllStyles.fontFamilyUI,
  );


  AppStyles appStyles([BuildContext? context]) {
    final brightness = (context != null)
        ? Theme.of(context).brightness
        : Brightness.light;
    return brightness == Brightness.light ? AppStyles(false) : AppStyles(true);
  }

  AppColors appColors([BuildContext? context]) {
    final brightness = (context != null)
        ? Theme.of(context).brightness
        : Brightness.light;
    return brightness == Brightness.light ? AppColors(false) : AppColors(true);
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedStateContainer(data: this, child: widget.child!);
  }
}

class _InheritedStateContainer extends InheritedWidget {
  const _InheritedStateContainer({required this.data, required super.child});

  final _AppThemeState data;

  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}
