import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../const/resource.dart';
import '../../../component/product_component.dart';
import '../../../data/model/cart.dart';
import '../../../data/model/product.dart';
import '../../../theme/text_style.dart';
import '../controllers/cart_menu_controller.dart';

class CartMenuView extends GetView<CartMenuController> {
  const CartMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(isDrawer: true, title: 'Cart', notification: true
          // preferredSize: 80,
          ),
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: colorf8fbff,
            // color: Colors.red,
          ),
          child: Stack(
            children: [
              Obx(
                () => Container(
                  child: ListView.builder(
                    itemCount: controller.listcart.value.length,
                    itemBuilder: (context, index) => cartProduct(
                      controller.listcart[index],
                      context, /*controller*/
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: colorWhite,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subtotal:',
                                style: sen40016.copyWith(fontSize: 15)),
                            Text('\$2,850',
                                style: sen70016.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Taxes:',
                                style: sen40016.copyWith(fontSize: 15)),
                            Text('\$40',
                                style: sen70016.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                '\$${controller.sum.value}',
                                style: sen80014.copyWith(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                width: 100,
                                height: 35,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                  color: color6776FE,
                                ),
                                child: Center(
                                  child: Text(
                                    'PAY',
                                    style: sen70013.copyWith(
                                      color: colorWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cartProduct(
    Cart cart,
    BuildContext context,
    // CartMenuController controller
  ) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 120,
        // color: Colors.red,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: colorWhite,
        ),

        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage('${cart.product?.linkImage}'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${cart.product?.title}', style: sen70016),
                    Text(
                      '\$${cart.product?.priceAfter}',
                      style: sen80014.copyWith(color: color6776FE),
                    ),
                    Text(
                      '${cart.count}',
                      style: sen70016.copyWith(color: color6776FE),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  //TODO: dialog
                  controller.count.value = cart.count ?? 0;
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Container(
                              height: 200,
                              width: 50,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.addCount(cart);
                                    },
                                    child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: const BoxDecoration(
                                          color: color999999,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            R.ASSETS_SVG_PLUS_SVG),
                                      ),
                                    ),
                                  ),
                                  Obx(() => Text('${controller.count.value}',
                                      style: sen70040)),
                                  GestureDetector(
                                    onTap: () {
                                      controller.subCount(cart);
                                    },
                                    child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: const BoxDecoration(
                                          color: color999999,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            R.ASSETS_SVG_SUB_SVG),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.addTocart(cart);
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        color: color6776FE,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add to Cart',
                                          style: sen70016.copyWith(
                                            color: colorWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: color6776FE,
                    ),
                    height: 31,
                    width: 31,
                    child: Center(
                      child: SvgPicture.asset(R.ASSETS_SVG_PLUS_SVG),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  AlertDialog dialog() => AlertDialog();
}
