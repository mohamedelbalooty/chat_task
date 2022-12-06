import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'text_widget.dart';

class BuildConversationFilterWidget extends StatefulWidget {
  const BuildConversationFilterWidget({Key? key}) : super(key: key);

  @override
  State<BuildConversationFilterWidget> createState() =>
      _BuildConversationFilterWidgetState();
}

class _BuildConversationFilterWidgetState
    extends State<BuildConversationFilterWidget> {
  int selectedButton = 0;
  final List<String> buttonTitles = const [
    'All chats',
    'Persona',
    'Work',
    'Groups'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,
      width: AppSpaces.infinitySide,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: buttonTitles.length,
        itemBuilder: (_, index) => InkWell(
          onTap: () => setState(() {
            selectedButton = index;
          }),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 26.h,
            decoration: BoxDecoration(
              color: selectedButton == index
                  ? AppColors.mainClr
                  : AppColors.whiteClr,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: TextWidget(
                text: buttonTitles[index],
                color: selectedButton == index
                    ? AppColors.whiteClr
                    : AppColors.greyClr,
                fontSize: 12.sp,
                fontWeight:
                selectedButton == index ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => AppSpaces.horizontalSpace5,
      ),
    );
  }
}