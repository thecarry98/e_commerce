import 'package:e_commerce/app/data/model/week_promotion.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeekPromotionMenu extends StatelessWidget {
  WeekPromotionMenu({Key? key, this.product}) : super(key: key);
  WeekPromotion? product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 170,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        color: coloreef5ff,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 105,
              width: 105,
              decoration: BoxDecoration(
                image: product!.linkImage != null
                    ? DecorationImage(
                        image: AssetImage(product!.linkImage),
                        fit: BoxFit.fill,
                      )
                    : const DecorationImage(
                        image: NetworkImage(
                            'https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-cap-2-3.jpg'),
                        fit: BoxFit.fill,
                      ),
              ),
            ),
            product!.title != null
                ? Text(
                    product!.title,
                    style: sen70016.copyWith(
                      fontSize: 13,
                      color: color6776FE,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
