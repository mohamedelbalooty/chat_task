import 'package:chat_task/src/views/shared/shared_widgets/app_bar_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/conversation_filter_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/coversation_card_widget.dart';
import 'package:chat_task/src/views/shared/shared_widgets/icon_button_widget.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_icons.dart';
import 'package:chat_task/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildRecentConversationsAppBarWidget() =>
    appBarWidget(title: 'Recent Chats', actions: [
      IconButtonWidget(
        icon: AppIcons.search,
        iconSize: 20.sp,
        iconColor: AppColors.greyClr,
        onClick: () {},
      ),
    ]);

class BuildRecentConversationBodyWidget extends StatelessWidget {
  const BuildRecentConversationBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppSpaces.horizontalPadding3,
      physics: const BouncingScrollPhysics(),
      itemCount: 5 + 2,
      itemBuilder: (_, index) => index == 0
          ? const BuildConversationFilterWidget()
          : index == 1
              ? AppSpaces.verticalSpace1
              : const BuildRecentConversationCardWidget(),
      separatorBuilder: (_, index) => AppSpaces.verticalSpace3,
    );
  }
}
