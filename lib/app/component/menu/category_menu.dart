import 'package:e_commerce/app/data/model/category.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryMenu extends StatelessWidget {
  CategoryMenu({Key? key, required this.category}) : super(key: key);
  Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 70,
      height: 95,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        border: Border.all(
          color: colorb0b8ff,
        ),
      ),
      child: Center(
        child: Container(
          width: 55,
          height: 75,
          decoration: const BoxDecoration(
            color: colorf0f3fd,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(category.getLink!),
                Text(
                  category.getTitle!,
                  style: sen40011.copyWith(
                    fontSize: 10,
                    color: color130F26,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
