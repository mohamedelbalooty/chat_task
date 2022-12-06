import 'package:chat_task/src/views/shared/shared_widgets/app_bar_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/text_widget.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildRecentAppBarWidget() => appBarWidget(title: 'Recent View');

class BuildRecentBodyWidget extends StatelessWidget {
  const BuildRecentBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(
        text: 'Any Thing Here',
        color: AppColors.secondFontClr,
        fontSize: 30.sp,
      ),
    );
  }
}
