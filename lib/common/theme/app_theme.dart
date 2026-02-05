import 'package:flutter/material.dart';

import '../style_guide/colors.dart';
import '../style_guide/style_guide.dart';

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
    colorScheme:  ColorScheme.fromSeed(seedColor: AppColors.bgBrand,primary: AppColors.bgBrandSecondary),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgPrimary,
    iconTheme: const IconThemeData(size: 24, color: AppColors.color808080),
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: const Color(0xfff8F8F8),
      surfaceTintColor: AppColors.bgBrandLight,
      titleSpacing: 0,
      titleTextStyle: AppTypography.titleLarge.copyWith(
        color: AppColors.textPrimary,
      ),
    ),
    dividerColor: AppColors.colorE2E8F0,
    primaryColor: AppColors.bgBrand,
    fontFamily: AppTypography.fontFamilyUI,
  );

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
