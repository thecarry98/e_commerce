import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TitleViewAll extends StatelessWidget {
  TitleViewAll(
      {Key? key, required this.title, this.namePage, this.isViewAll = false})
      : super(key: key);
  String title;
  String? namePage;
  bool? isViewAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: sen70028.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color130F26,
            ),
          ),
          isViewAll == true
              ? GestureDetector(
                  onTap: () {
                    Get.toNamed(namePage!);
                  },
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: sen40013.copyWith(
                          fontSize: 14,
                          color: color6776FE,
                        ),
                      ),
                      SvgPicture.asset(R.ASSETS_SVG_ARROW1_SVG),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
