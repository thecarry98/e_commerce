import 'package:e_commerce/app/component/start_review.dart';
import 'package:e_commerce/app/data/model/product.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductComponent extends StatelessWidget {
  ProductComponent({Key? key, this.product, this.isLike = false})
      : super(key: key);
  Product? product;
  bool isLike;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 240,
      // width: 160,
      decoration: const BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(14),
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 132,
              width: 132,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Stack(
                  children: [
                    Image.network(
                      '${product?.linkImage}',
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: product?.sale != null
                          ? Container(
                              width: 50,
                              height: 22,
                              decoration: const BoxDecoration(
                                color: color6776FE,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '${product?.sale}%',
                                  style: sen70016.copyWith(
                                    fontSize: 12,
                                    color: colorWhite,
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '${product?.title}',
              style: sen70016.copyWith(
                fontSize: 12,
                height: 1.5,
                color: color130F26,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('\$${product?.priceAfter}', style: sen80014),
                    product?.priceBefore != null
                        ? Text(
                            '\$${product?.priceBefore}',
                            style: sen40011.copyWith(
                              fontSize: 10,
                              color: color838383,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        : Container(),
                  ],
                ),
                HeartProduct(isLike: isLike),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // StarReview(product?.review),
              StartReview(starReview: product?.review),
              Text(product?.sold != null ? '${product?.sold} sold' : '0 sold',
                  style: sen40011.copyWith(fontSize: 10, color: colora9a9a9)),
            ]),
          ],
        ),
      ),
    );
  }

  Widget StarReview(double? starReview) {
    return RatingBar.builder(
      itemSize: 11,
      initialRating: starReview != null ? starReview : 0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
        // size: 14,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}

class HeartProduct extends StatefulWidget {
  HeartProduct({Key? key, this.isLike = false}) : super(key: key);
  bool? isLike;

  @override
  State<HeartProduct> createState() => _HeartProductState();
}

class _HeartProductState extends State<HeartProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isLike = !widget.isLike!;
        });
      },
      child: widget.isLike == false
          ? SvgPicture.asset(
              R.ASSETS_SVG_HEART_SVG,
              width: 20,
              height: 20,
            )
          : SvgPicture.asset(
              R.ASSETS_SVG_HEART_LIKED_SVG,
              width: 20,
              height: 20,
            ),
    );
  }
}
