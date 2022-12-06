import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static final ThemeData theme = ThemeData(
    fontFamily: 'Plus Jakarta',
    primaryColor: const Color(0xff2F80ED),
    scaffoldBackgroundColor: const Color(0xffF7F7F7),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xffF7F7F7),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: const Color(0xff1B1A57),
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Plus Jakarta',
        overflow: TextOverflow.visible,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      iconSize: 26.sp,
      backgroundColor: const Color(0xff2F80ED),
    ),
  );
}
