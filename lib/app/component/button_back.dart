import 'package:e_commerce/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class ButtonBack extends StatelessWidget {
  // BackButton({Key? key}) : super(key: key);

  // Routes? page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(103, 118, 254, 0.3),
              blurRadius: 13,
            ),
          ],
        ),
        child: const Icon(Icons.arrow_back, color: colorBlack),
        // child: Container(
        //   decoration: const BoxDecoration(
        //   ),
        // ),
      ),
    );
  }
}
