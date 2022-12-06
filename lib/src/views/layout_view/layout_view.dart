import 'package:chat_task/src/views/layout_view/widgets.dart';
import 'package:chat_task/src/views/shared/shared_widgets/floating_button_widget.dart';
import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_icons.dart';
import 'package:chat_task/utils/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizeConfiguration.onInit(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: PersistentTabView(
        context,
        screens: screens,
        items: bottomItems,
        navBarStyle: NavBarStyle.simple,
        backgroundColor: AppColors.whiteClr,
        floatingActionButton: FloatingButtonWidget(
          icon: AppIcons.add_chat,
          onClick: () {},
        ),
      ),
    );
  }
}
