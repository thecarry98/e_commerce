import 'package:e_commerce/app/data/model/category_image.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryImageComponent extends StatelessWidget {
  CategoryImageComponent({Key? key, this.cateImage}) : super(key: key);

  CategoryImage? cateImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 122,
      margin: EdgeInsets.symmetric(horizontal: 10),
      // color: Colors.red,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            // child: Image.asset(cateImage.linkImage ?? '', fit: BoxFit.fill,
            child: cateImage!.linkImage.isEmpty
                ? Image.network('')
                : Image.network(cateImage!.linkImage, fit: BoxFit.fill),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(12),
          //   ),
          //   child: SvgPicture.asset(
          //     R.ASSETS_SVG_RECTANGLE138_SVG,
          //     fit: BoxFit.fill,
          //     color: ,
          //   ),
          // ),

          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(R.ASSETS_IMAGES_CLOTHING_TRANSPARENT_1_PNG),
                fit: BoxFit.fill,
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffc4c4c4),
                  Color(0xa16f6f6f),
                  Color(0xff4d4d4d),
                ],
              ),
            ),
          ),

          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              // mainAxisAlignment: MainAxisAlignment.center,
              child: Text(
                cateImage!.title,
                style: sen40016.copyWith(
                  color: colorWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
