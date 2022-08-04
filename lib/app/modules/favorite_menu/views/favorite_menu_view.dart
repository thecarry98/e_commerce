import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/data/model/product.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../component/product_component.dart';
import '../controllers/favorite_menu_controller.dart';

class FavoriteMenuView extends GetView<FavoriteMenuController> {
  FavoriteMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(isDrawer: true, title: 'Favorite', notification: true
          // preferredSize: 80,
          ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: colorf8fbff,
            // color: Colors.red,
          ),
          child: Container(
            height: 500,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // maxCrossAxisExtent: 160,
                    mainAxisExtent: 240,
                    // childAspectRatio: 4 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ProductComponent(
                    product: favoriteProduct[index],
                    isLike: true,
                  );
                }),
          ),
        ),
      ),
    );
  }
}
