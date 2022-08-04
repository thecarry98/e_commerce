import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../const/resource.dart';
import '../../../component/button_back.dart';
import '../../../component/button_drawer.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_style.dart';
import '../../main/views/main_view.dart';
import '../controllers/drawer_menu_controller.dart';
import 'package:animated_drawer/bloc/generic_bloc.dart';
import 'package:animated_drawer/bloc/home_page_bloc.dart';
import 'package:animated_drawer/bloc/shadow_bloc.dart';
import 'package:animated_drawer/constants/constants.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:animated_drawer/views/first_layer.dart';
import 'package:animated_drawer/views/home_page.dart';
import 'package:animated_drawer/views/shadow.dart';
import 'package:animated_drawer/views/third_layer.dart';

class DrawerMenuView extends GetView<DrawerMenuController> {
  DrawerMenuView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedDrawer(
        homePageXValue: 150,
        homePageYValue: 80,
        homePageAngle: -0.2,
        homePageSpeed: 250,
        shadowXValue: 122,
        shadowYValue: 110,
        shadowAngle: -0.275,
        shadowSpeed: 550,
        openIcon: Container(),
        closeIcon: Container(),
        // closeIcon: Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
        // shadowColor: Colors.red,

        menuPageContent: Container(
          color: coloreff4fa,
          padding: const EdgeInsets.only(top: 100.0, left: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 78,
                  height: 78,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                Text('John Doe', style: sen70016),
                Text('Johndoe@gmail.com', style: sen40013),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_PROFILE_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'My profile',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_LANGUAGE_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'Language',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_ALL_CATEGORY_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'All category',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_MY_ORDER_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'My order',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_SETTINGS_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'Setting',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset(R.ASSETS_SVG_ABOUTUS_SVG,
                                width: 24, height: 24),
                            SizedBox(width: 10),
                            Text(
                              'About us',
                              style: sen40013.copyWith(
                                fontSize: 14,
                                color: colorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: color6776FE,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Log out',
                      style: sen70016.copyWith(color: colorWhite),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        homePageContent: MainView(),
      ),
    );
  }
}
