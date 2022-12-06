import 'package:chat_task/core/helper/navigation_helper.dart';
import 'package:chat_task/src/di_injection.dart';
import 'package:chat_task/utils/app_assets.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../group_chat_view.dart/group_chat_view.dart';
import 'text_widget.dart';

class BuildRecentConversationCardWidget extends StatelessWidget {
  const BuildRecentConversationCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => sl<NavigationHelper>().onNavigate(page: const GroupChatView()),
      child: Container(
        height: 64.h,
        color: AppColors.transparentClr,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundImage: const AssetImage(AppAssets.testImage3),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2C94C),
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.whiteClr, width: 1),
                  ),
                ),
              ],
            ),
            AppSpaces.horizontalSpace3,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Darlene Steward',
                  color: AppColors.mainFontClr,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
                TextWidget(
                  text: 'Pls take a look at the images.',
                  color: AppColors.mainFontClr,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: DateFormat.jm().format(DateTime.now()),
                  color: AppColors.mainFontClr,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  height: 24.h,
                  width: 24.h,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: AppColors.mainClr,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: TextWidget(
                      text: '5',
                      fontSize: 12.sp,
                      color: AppColors.whiteClr,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
