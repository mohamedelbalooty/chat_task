import 'package:chat_task/core/helper/navigation_helper.dart';
import 'package:chat_task/src/di_injection.dart';
import 'package:chat_task/src/views/recent_conversations_view/recent_conversations_view.dart';
import 'package:chat_task/src/views/shared/shared_widgets/app_bar_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/circle_button_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/conversation_filter_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/icon_button_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/text_widget.dart';
import 'package:chat_task/utils/app_assets.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_icons.dart';
import 'package:chat_task/utils/app_size_config.dart';
import 'package:chat_task/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/shared_widgets/coversation_card_widget.dart';

AppBar buildHomeAppBarWidget() => appBarWidget(
      title: 'Pinned Chats',
      actions: [
        CircleButtonWidget(
          side: 32.sp,
          color: AppColors.transparentClr,
          margin: const EdgeInsets.all(10),
          decoratedImage: const DecorationImage(
            image: AssetImage(AppAssets.testImage1),
            fit: BoxFit.fill,
          ),
          onClick: () {},
        )
      ],
    );

class BuildHomeBodyWidget extends StatefulWidget {
  const BuildHomeBodyWidget({Key? key}) : super(key: key);

  @override
  State<BuildHomeBodyWidget> createState() => _BuildHomeBodyWidgetState();
}

class _BuildHomeBodyWidgetState extends State<BuildHomeBodyWidget> {
  int? _selectedCard;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: AppSpaces.horizontalPadding2,
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 110.h,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
      ),
      itemBuilder: (_, index) => BuildPinedConversationCardWidget(
        isActive: true,
        isSelected: _selectedCard == index,
        onClick: () {
          setState(() {
            _selectedCard = index;
          });
          showBottomSheet<void>(
            context: context,
            backgroundColor: AppColors.transparentClr,
            builder: (BuildContext context) {
              return const BuildBottomSheetWidget();
            },
          );
        },
      ),
    );
  }
}

class BuildPinedConversationCardWidget extends StatelessWidget {
  const BuildPinedConversationCardWidget(
      {Key? key,
      required this.isActive,
      required this.isSelected,
      required this.onClick})
      : super(key: key);
  final bool isActive, isSelected;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectedClr : AppColors.unselectedClr,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                              backgroundImage:
                                  const AssetImage(AppAssets.testImage2),
                              backgroundColor: Theme.of(context).primaryColor,
                            ),
                            Container(
                              height: 12.h,
                              width: 12.h,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? const Color(0xff4CE417)
                                    : const Color(0xffF2C94C),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.whiteClr, width: 1),
                              ),
                            ),
                          ],
                        ),
                        AppSpaces.horizontalSpace2,
                        Expanded(
                          child: TextWidget(
                            text: 'Darlene Steward',
                            color: isSelected
                                ? AppColors.mainFontClr
                                : AppColors.secondFontClr,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                    AppSpaces.verticalSpace2,
                    TextWidget(
                      text: 'Preparing for next vac',
                      color: isSelected
                          ? AppColors.mainFontClr
                          : AppColors.secondFontClr,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            if (isActive)
              Container(
                height: 12.h,
                width: 12.h,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.mainClr,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class BuildBottomSheetWidget extends StatelessWidget {
  const BuildBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpaces.horizontalPadding3,
      height: AppSizeConfiguration.screenHeight / 2,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: Column(
        children: [
          AppSpaces.verticalSpace2,
          Container(
            height: 3.73.h,
            width: 24.w,
            color: AppColors.greyClr,
          ),
          AppSpaces.verticalSpace2,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: TextWidget(
                          text: 'Recent Chats',
                          color: AppColors.mainFontClr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        onTap: () {
                          sl<NavigationHelper>().onPersistentNavigate(context,
                              page: const RecentConversationsView());
                        },
                      ),
                      IconButtonWidget(
                        icon: AppIcons.search,
                        iconSize: 20.sp,
                        iconColor: AppColors.greyClr,
                        onClick: () {},
                      ),
                    ],
                  ),
                  AppSpaces.verticalSpace1,
                  const BuildConversationFilterWidget(),
                  AppSpaces.verticalSpace5,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (_, index) =>
                        const BuildRecentConversationCardWidget(),
                    separatorBuilder: (_, index) => AppSpaces.verticalSpace3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
