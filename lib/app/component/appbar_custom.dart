import 'package:e_commerce/app/component/button_back.dart';
import 'package:e_commerce/app/component/button_cart_appbar.dart';
import 'package:e_commerce/app/component/button_drawer.dart';
import 'package:e_commerce/app/component/button_noti_appbar.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/resource.dart';
import '../routes/app_pages.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  AppBarCustom({
    Key? key,
    this.showBack = false,
    this.title = '',
    this.isDrawer = false,
    this.color,
    this.actionCount = 1,
    this.notification = false,
    this.isCart = false,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);
  // : super(key: key);
  final Size preferredSize;
  String? title;
  bool isDrawer;
  bool showBack;
  Color? color;
  int? actionCount;
  bool notification;
  bool isCart;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? colorWhite,
      elevation: 0,
      leading: showBack
          ? Stack(
              children: [
                Positioned(
                  top: 8,
                  left: 12,
                  child: Container(
                    child: ButtonBack(),
                  ),
                ),
              ],
            )
          : isDrawer
              ? Stack(
                  children: [
                    Positioned(
                      top: 8,
                      left: 12,
                      child: Container(
                        child: ButtonDrawer(),
                      ),
                    ),
                  ],
                )
              : Container(),
      title: Text(
        title!,
        style: sen70028.copyWith(
          fontSize: 22,
          color: color130F26,
        ),
      ),
      centerTitle: true,
      actions: [
        notification == true
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Center(
                  child: ButtonNotiAppbar(),
                ),
              )
            : isCart == true
                ? Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: Center(
                      child: ButtonCartAppbar(),
                    ),
                  )
                : Container()
      ],
    );
  }
}
