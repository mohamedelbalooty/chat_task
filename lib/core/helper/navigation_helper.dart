import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigationHelper {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<dynamic> onNavigate({required Widget page}) =>
      navigationKey.currentState!.push(MaterialPageRoute(builder: (_) => page));

  void onPersistentNavigate(context, {required Widget page}) =>
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: page,
        withNavBar: true,
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );

  void onPop() => navigationKey.currentState!.pop();
}
