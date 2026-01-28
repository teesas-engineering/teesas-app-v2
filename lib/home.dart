import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/constants/app_constants.dart';
import 'common/theme/app_theme.dart';
import 'dependency_manager/app_dependency_provider.dart';
import 'dependency_manager/injectable.dart';
import 'router/main_router.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mainRouter = getIt.get<MainRouter>();
    return AppDependencyProvider(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            locale: const Locale('en', 'UK'),
            title: AppConstant.appName,
            theme: AppTheme.of(context).lightTheme,
            routerConfig: mainRouter.router,
          );
        },
      ),
    );
  }
}
