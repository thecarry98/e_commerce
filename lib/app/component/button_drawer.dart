import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class ButtonDrawer extends StatelessWidget {
  // const ButtonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DRAWER_MENU);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color.fromRGBO(103, 118, 254, 0.3),
          //     blurRadius: 13,
          //   ),
          // ],
        ),
        child: Center(
          child: SvgPicture.asset(R.ASSETS_SVG_DRAWER_SVG),
        ),
        // child: Container(
        //   decoration: const BoxDecoration(
        //   ),
        // ),
      ),
    );
  }
}
