import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'router/app_router.dart';
import 'utils/themes/primary_theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(390, 844),
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        routerConfig: appRouter,
        theme: primaryTheme,
        color: primaryTheme.primaryColor,
        title: 'Quiz App',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
