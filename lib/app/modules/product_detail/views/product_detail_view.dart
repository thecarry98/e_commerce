import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/resource.dart';
import '../../../component/product_component.dart';
import '../../../data/model/product.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_style.dart';
import '../../main/component/title_view_all.dart';
import '../component/review_component.dart';
import '../component/size_component.dart';
import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  ProductDetailView({Key? key, this.product}) : super(key: key);
  Product? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 100,
      //   // color: Colors.red.withOpacity(0.3),
      //   // color: colorWhite.withOpacity(0.3),
      //   child: Container(
      //     margin: EdgeInsets.all(20),
      //     // color: Colors.blue,
      //     child: Row(
      //       children: [
      //         Flexible(
      //           flex: 1,
      //           child: Container(
      //               height: 50,
      //               width: 50,
      //               decoration: const BoxDecoration(
      //                 color: colore0e0e0,
      //                 borderRadius: BorderRadius.all(
      //                   Radius.circular(16),
      //                 ),
      //               ),
      //               child: Center(
      //                 child: SvgPicture.asset(R.ASSETS_SVG_BUYPAY_SVG),
      //               )),
      //         ),
      //         const SizedBox(width: 20),
      //         Flexible(
      //           flex: 4,
      //           child: Container(
      //             width: 270,
      //             decoration: const BoxDecoration(
      //               color: color6776FE,
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             child: Center(
      //               child: Text(
      //                 'PAY',
      //                 style: sen70016.copyWith(
      //                   fontSize: 20,
      //                   color: colorWhite,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      backgroundColor: colorf6f6f6,
      appBar: AppBarCustom(
        showBack: true,
        title: 'Product detail',
        isCart: true,
        color: colorf6f6f6,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 230,
                  // color: Colors.red,
                  margin: EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          // 'https://d1hjkbq40fs2x4.cloudfront.net/2016-01-31/files/1045.jpg',
                          R.ASSETS_IMAGES_CLOTHINGTRANSPARENT_PNG,
                          width: 180,
                          height: 220,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 102,
                          decoration: const BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                // color: Colors.red,
                                child: Center(
                                  child: SvgPicture.asset(
                                    R.ASSETS_SVG_BUTTON_UP_SVG,
                                  ),
                                ),
                              ),
                              const Divider(),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: colorececec,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    R.ASSETS_IMAGES_CLOTHINGTRANSPARENT_PNG,
                                    width: 25,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // height: 1000,
                  decoration: const BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(100),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${product?.title.toString()}',
                                    style: sen70028.copyWith(
                                      color: color130F26,
                                    ),
                                  ),
                                  Text(
                                    '\$${product?.priceAfter}',
                                    style: sen80033.copyWith(
                                      fontSize: 25,
                                      color: color6776FE,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //TODO: thằng dở hơi này nó ko hiện
                                      SvgPicture.asset(
                                        R.ASSETS_SVG_STARTYELLOW_SVG,
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.fill,
                                        // color: Colors.red,
                                      ),
                                      Text(
                                        '${product?.review}',
                                        style: sen70016.copyWith(
                                          fontSize: 18,
                                          color: color130F26,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '(${product?.sold})',
                                    style: sen40013.copyWith(
                                      fontSize: 14,
                                      color: color808080,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                          color: coloreaeaea,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 120,
                          // color: Colors.red,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                    //TODO: color
                                    ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 150,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SIZE',
                                          style: sen40013.copyWith(
                                            color: colorb1b1b1,
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child: GridView.count(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              crossAxisCount: 3,
                                              children: [
                                                SizeComponent(size: 'S'),
                                                SizeComponent(size: 'S'),
                                                SizeComponent(size: 'S'),
                                                SizeComponent(size: 'S'),
                                                SizeComponent(size: 'S'),
                                                SizeComponent(size: 'M'),
                                                SizeComponent(size: 'L'),
                                                SizeComponent(size: 'L'),
                                                SizeComponent(size: 'L'),
                                                SizeComponent(size: 'L'),
                                                SizeComponent(size: 'L'),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            children: [
                              TitleViewAll(
                                title: 'Description',
                                // isViewAll: true,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indu stry\'s standard dummy text ever since the 1500s, whe an unknown printer took a galley of type and sc rambled it to make a type printer took a...',
                                style: sen40013.copyWith(
                                  color: color787878,
                                ),
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View More',
                                      style: sen70013.copyWith(
                                        fontSize: 15,
                                        color: color6776FE,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      R.ASSETS_SVG_DROPDOWN_SVG,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              TitleViewAll(
                                title: 'Review Product',
                                isViewAll: true,
                              ),
                              //TODO:
                              ReviewComponent(),
                              ReviewComponent(),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              TitleViewAll(
                                title: 'Top Rated Products',
                                isViewAll: true,
                              ),
                              Container(
                                height: 240,
                                child: GridView.builder(
                                  itemCount: 2,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2 / 3,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                  ),
                                  itemBuilder: (context, index) =>
                                      ProductComponent(
                                    product: listProduct[index],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(height: 50),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red.withOpacity(0.3),
              // color: colorWhite.withOpacity(0.3),
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.white,
                    ],
                    stops: [
                      0.0,
                      1.0
                    ]),
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                // color: Colors.blue,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: colore0e0e0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(R.ASSETS_SVG_BUYPAY_SVG),
                          )),
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      flex: 4,
                      child: Container(
                        width: 270,
                        decoration: const BoxDecoration(
                          color: color6776FE,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'PAY',
                            style: sen70016.copyWith(
                              fontSize: 20,
                              color: colorWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
