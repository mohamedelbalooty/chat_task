import 'package:chat_task/utils/app_theme.dart';
import 'package:flutter/material.dart';

AppBar appBarWidget({
  required String title,
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily,
  TextOverflow? overflow,
  Widget? leading,
  List<Widget>? actions,
  bool autoLeading = false,
}) =>
    AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: color ?? AppTheme.theme.appBarTheme.titleTextStyle!.color,
          fontSize:
              fontSize ?? AppTheme.theme.appBarTheme.titleTextStyle!.fontSize,
          fontWeight: fontWeight ??
              AppTheme.theme.appBarTheme.titleTextStyle!.fontWeight,
          fontFamily: fontFamily ??
              AppTheme.theme.appBarTheme.titleTextStyle!.fontFamily,
        ),
      ),
      automaticallyImplyLeading: autoLeading,
      leading: leading,
      actions: actions,
    );
