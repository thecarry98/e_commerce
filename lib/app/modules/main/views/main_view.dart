import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/login/views/login_view.dart';
import 'package:e_commerce/app/modules/signup/views/signup_view.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../cart_menu/views/cart_menu_view.dart';
import '../../favorite_menu/views/favorite_menu_view.dart';
import '../controllers/main_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainView extends GetView<MainController> {
  // const MainView({Key? key}) : super(key: key);
  @override
  List<Widget> _buildScreens() {
    return [
      HomeView(),
      FavoriteMenuView(),
      HomeView(),
      HomeView(),
      CartMenuView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          R.ASSETS_SVG_HOME_NAV_SVG,
          color: color6776FE,
        ),
        // title: ("Home"),
        inactiveIcon: SvgPicture.asset(R.ASSETS_SVG_HOME_INACTIVE_SVG,
            color: CupertinoColors.systemGrey),
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          R.ASSETS_SVG_HEART_SVG,
          color: color6776FE,
        ),
        inactiveIcon: SvgPicture.asset(R.ASSETS_SVG_HEART_SVG,
            color: CupertinoColors.systemGrey), // title: ("Home"),
        activeColorPrimary: color6776FE,
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          R.ASSETS_SVG_SEARCH_SVG,
          // color: color6776FE,
          color: colorWhite,
        ),
//  inactiveIcon: SvgPicture.asset(R.ASSETS_SVG_SEARCH_SVG,
//             color: CupertinoColors.systemGrey),
//         // title: ("Home"),
//         activeColorPrimary: color6776FE,
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          color: color6776FE,
          R.ASSETS_SVG_SHOPPING_SVG,
        ),
        inactiveIcon: SvgPicture.asset(R.ASSETS_SVG_SHOPPING_SVG,
            color: CupertinoColors.systemGrey),
        // title: ("Home"),
        activeColorPrimary: color6776FE,
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          color: color6776FE,
          R.ASSETS_SVG_BUY_SVG,
        ),
        inactiveIcon: SvgPicture.asset(R.ASSETS_SVG_BUY_SVG,
            color: CupertinoColors.systemGrey),
        // title: ("Home"),
        activeColorPrimary: color6776FE,
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller.controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
