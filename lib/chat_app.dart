import 'package:chat_task/core/helper/navigation_helper.dart';
import 'package:chat_task/src/di_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'src/views/layout_view/layout_view.dart';
import 'utils/app_theme.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App Task',
        localizationsDelegates: translator.delegates,
        locale: const Locale('en'),
        supportedLocales: translator.locals(),
        navigatorKey: sl<NavigationHelper>().navigationKey,
        theme: AppTheme.theme,
        home: child,
      ),
      child: const LayoutView(),
    );
  }
}
