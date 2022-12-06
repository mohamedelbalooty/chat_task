import 'package:chat_task/core/helper/navigation_helper.dart';
import 'package:chat_task/src/di_injection.dart';
import 'package:chat_task/src/views/shared/shared_widgets/circle_button_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/icon_button_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/text_widget.dart';
import 'package:chat_task/utils/app_assets.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_icons.dart';
import 'package:chat_task/utils/app_size_config.dart';
import 'package:chat_task/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

AppBar buildGroupChatAppBar(BuildContext context) => AppBar(
      leadingWidth: 40.w,
      leading: IconButtonWidget(
        icon: Icons.arrow_back_sharp,
        iconSize: 28.sp,
        iconColor: AppColors.greyClr,
        onClick: () => sl<NavigationHelper>().onPop(),
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundImage: const AssetImage(AppAssets.testImage4),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          AppSpaces.horizontalSpace2,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Fullsnack Designer',
                  color: AppColors.mainFontClr,
                  fontSize:
                      Theme.of(context).appBarTheme.titleTextStyle!.fontSize,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
                AppSpaces.verticalSpace1,
                TextWidget(
                  text: '7 Online, from 12 peoples',
                  color: AppColors.mainFontClr,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
      titleSpacing: 0,
      actions: [
        IconButtonWidget(
          icon: AppIcons.video_call,
          iconSize: 18.sp,
          iconColor: AppColors.greyClr,
          onClick: () {},
        ),
        IconButtonWidget(
          icon: Icons.more_vert,
          iconSize: 28.sp,
          iconColor: AppColors.greyClr,
          onClick: () {},
        )
      ],
    );

class BuildGroupChatBodyWidget extends StatelessWidget {
  const BuildGroupChatBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpaces.infinitySide,
      width: AppSpaces.infinitySide,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: AppSpaces.horizontalPadding2,
            child: Column(
              children: [
                AppSpaces.verticalSpace2,
                const BuildAdminMessageBubbleWidget(),
                AppSpaces.verticalSpace3,
                const BuildReceiverMessageBubbleWidget(),
                AppSpaces.verticalSpace5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: '. • . ∙ ',
                      color: AppColors.secondFontClr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      height: 0.6,
                    ),
                    FlutterImageStack.providers(
                      providers: List.generate(
                          3,
                              (index) =>
                              AssetImage('assets/images/img_${index + 1}.jpg')),
                      showTotalCount: true,
                      totalCount: 3,
                      itemRadius: 24.r,
                      itemCount: 3,
                      itemBorderWidth: 1,
                    ),
                    TextWidget(
                      text: ' +2 others are typing',
                      color: AppColors.secondFontClr,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const BuildChattingBottomTextFieldWidget(),
        ],
      ),
    );
  }
}

class BuildReceiverMessageBubbleWidget extends StatelessWidget {
  const BuildReceiverMessageBubbleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: AppSizeConfiguration.screenWidth / 2,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.mainClr,
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(10.r),
              topStart: Radius.circular(10.r),
              bottomStart: Radius.circular(10.r),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text:
                'That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!',
                color: AppColors.whiteClr,
                fontSize: 12.sp,
              ),
              AppSpaces.verticalSpace2,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(
                    text: DateFormat.jm().format(DateTime.now()),
                    color: AppColors.whiteClr,
                    fontSize: 12.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
        AppSpaces.horizontalSpace1,
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundImage: const AssetImage(AppAssets.testImage2),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            Container(
              height: 12.h,
              width: 12.h,
              decoration: BoxDecoration(
                color: const Color(0xff4CE417),
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.whiteClr, width: 1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildAdminMessageBubbleWidget extends StatelessWidget {
  const BuildAdminMessageBubbleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundImage: const AssetImage(AppAssets.testImage1),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            Container(
              height: 12.h,
              width: 12.h,
              decoration: BoxDecoration(
                color: const Color(0xff4CE417),
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.whiteClr, width: 1),
              ),
            ),
          ],
        ),
        AppSpaces.horizontalSpace1,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: AppSizeConfiguration.screenWidth / 2,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.unselectedClr,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(10.r),
                  topStart: Radius.circular(10.r),
                  bottomEnd: Radius.circular(10.r),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'Mike Mazowski',
                        color: const Color(0xffF2994A),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      TextWidget(
                        text: 'admin',
                        color: AppColors.secondFontClr,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  AppSpaces.verticalSpace2,
                  TextWidget(
                    text:
                    'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination',
                    color: AppColors.mainFontClr,
                    fontSize: 12.sp,
                  ),
                  AppSpaces.verticalSpace2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextWidget(
                        text: DateFormat.jm().format(DateTime.now()),
                        color: AppColors.secondFontClr,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 100.h,
              width: AppSizeConfiguration.screenWidth / 2,
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage(AppAssets.testImage2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: AppSizeConfiguration.screenWidth / 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100.h,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.testImage3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.h,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.testImage4),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildChattingBottomTextFieldWidget extends StatelessWidget {
  const BuildChattingBottomTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100.h,
        color: AppColors.whiteClr,
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
              child: Row(
                children: [
                  TextButton(
                    child: TextWidget(
                      text: '# General',
                      color: AppColors.mainClr,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    onPressed: () {},
                  ),
                  const Spacer(),
                  IconButtonWidget(
                    icon: Icons.arrow_drop_up,
                    iconColor: AppColors.mainClr,
                    iconSize: 22.sp,
                    constraints: const BoxConstraints(),
                    onClick: () {},
                  ),
                  IconButtonWidget(
                    icon: Icons.more_vert,
                    iconColor: AppColors.mainClr,
                    iconSize: 22.sp,
                    constraints: const BoxConstraints(),
                    onClick: () {},
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.greyClr,
              height: 0,
              thickness: 0.8,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a message...',
                      hintStyle: TextStyle(
                        color: AppColors.greyClr,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: IconButtonWidget(
                        icon: Icons.add_reaction_outlined,
                        iconColor: AppColors.greyClr,
                        iconSize: 26.sp,
                        constraints: const BoxConstraints(),
                        onClick: () {},
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                ),
                IconButtonWidget(
                  icon: Icons.attach_file,
                  iconColor: AppColors.greyClr,
                  iconSize: 26.sp,
                  constraints: const BoxConstraints(),
                  onClick: () {},
                ),
                CircleButtonWidget(
                  side: 40.h,
                  color: AppColors.mainClr,
                  child: Icon(
                    Icons.keyboard_voice_outlined,
                    color: AppColors.whiteClr,
                    size: 24.sp,
                  ),
                  onClick: () {},
                ),
                AppSpaces.horizontalSpace3,
              ],
            ),
          ],
        ),
      ),
    );
  }
}