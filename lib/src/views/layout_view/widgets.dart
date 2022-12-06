import 'package:chat_task/utils/app_colors.dart';
import 'package:chat_task/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'calling_view/calling_view.dart';
import 'home_view/home_view.dart';
import 'profile_view/profile_view.dart';
import 'recent_view/recent_view.dart';

final List<Widget> screens = [
  const HomeView(),
  const RecentView(),
  const CallingView(),
  const ProfileView(),
];

PersistentBottomNavBarItem persistentBottomNavBarItemWidget(
        {required IconData icon}) =>
    PersistentBottomNavBarItem(
        icon: Icon(icon),
        activeColorPrimary: AppColors.mainClr,
        inactiveColorPrimary: AppColors.greyClr,
        iconSize: 26.sp);

final List<PersistentBottomNavBarItem> bottomItems = [
  persistentBottomNavBarItemWidget(icon: AppIcons.chat),
  persistentBottomNavBarItemWidget(icon: AppIcons.timer),
  persistentBottomNavBarItemWidget(icon: AppIcons.calling),
  persistentBottomNavBarItemWidget(icon: AppIcons.person),
];



