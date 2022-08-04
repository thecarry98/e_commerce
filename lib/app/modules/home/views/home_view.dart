import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/menu/category_image_component.dart';
import 'package:e_commerce/app/component/menu/category_menu.dart';
import 'package:e_commerce/app/component/menu/week_promotion_menu.dart';
import 'package:e_commerce/app/component/product_component.dart';
import 'package:e_commerce/app/data/model/category.dart';
import 'package:e_commerce/app/data/model/category_image.dart';
import 'package:e_commerce/app/data/model/product.dart';
import 'package:e_commerce/app/data/model/week_promotion.dart';
import 'package:e_commerce/app/modules/main/component/title_view_all.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:e_commerce/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<String> pageImage = [
  R.ASSETS_IMAGES_MASK_PNG,
  R.ASSETS_IMAGES_MASK_PNG,
  R.ASSETS_IMAGES_MASK_PNG,
];

List<WeekPromotion> listWeek = [
  WeekPromotion('Discount 10%', R.ASSETS_IMAGES_WP1_PNG),
  WeekPromotion('Discount 20%', R.ASSETS_IMAGES_WP1_PNG),
  WeekPromotion('Discount 30%', R.ASSETS_IMAGES_WP1_PNG),
  WeekPromotion('Discount 40%', R.ASSETS_IMAGES_WP1_PNG),
];

Category cate1 = Category(
  'Apple',
  R.ASSETS_SVG_APPLE_SVG,
);
List<Category> list = [
  Category('Camera', R.ASSETS_SVG_CAMERA_SVG),
  Category('Console', R.ASSETS_SVG_CONSOLE_SVG),
  Category('Dish', R.ASSETS_SVG_DISH_SVG),
  Category('Fashion', R.ASSETS_SVG_FASHION_SVG),
  Category('Health', R.ASSETS_SVG_HEALTHCARE_SVG),
  Category('Monitor', R.ASSETS_SVG_MONITOR_SVG),
  Category('Phone', R.ASSETS_SVG_SMARTPHONE_SVG),
  Category('Washing', R.ASSETS_SVG_WASHING_MACHINE_SVG),
];

class HomeView extends GetView<HomeController> {
  // const HomeView({Key? key}) : super(key: key);
  @override
  Widget _pageView() => PageView(
        children: pageImage.map((e) => _pageImage(e)).toList(),
      );
  Widget _pageImage(String link) => Container(
          decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        image: DecorationImage(
          image: AssetImage(link),
          fit: BoxFit.fill,
        ),
      ));
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        isDrawer: true,
        color: colorf8fbff,
        notification: true,
      ),
      backgroundColor: colorf8fbff,
      body: SafeArea(
        child: Container(
          // color: Colors.red,
          child: SingleChildScrollView(
            // height: 250,
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: _pageView(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: TitleViewAll(
                    title: 'Menu',
                    isViewAll: true,
                    namePage: Routes.MENU_PAGE,
                  ),
                  // child: Text(),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => CategoryMenu(
                      category: list[index],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    // right: 20,
                    bottom: 10,
                  ),
                  child: TitleViewAll(
                    title: 'Week Promotion',
                  ),
                  // child: Text(),
                ),
                Container(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => WeekPromotionMenu(
                      product: listWeek[index],
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        R.ASSETS_IMAGES_PROMOTIONIMAGE_PNG,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          height: 31,
                          child: Row(
                            children: [
                              Container(
                                width: 31,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: colorWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: sen70016.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                      color: colorWhite,
                                    ),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                      color: colorWhite,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 31,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: colorWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    //minute
                                    // controller.countDown.value.minute
                                    //     .toString(),
                                    // controller.count.value.toString(),
                                    '5',
                                    // controller.countDown.minute.toString(),
                                    style: sen70016.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                      color: colorWhite,
                                    ),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(3),
                                      ),
                                      color: colorWhite,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 31,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: colorWhite,
                                ),
                                child: Center(
                                  child: Text(
                                    '5',
                                    style: sen70016.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 20,
                    bottom: 10,
                  ),
                  child: TitleViewAll(
                    title: 'Category',
                  ),
                  // child: Text(),
                ),
                Container(
                  height: 170,
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => CategoryImageComponent(
                        cateImage: listCategoryImages[index]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: TitleViewAll(
                    title: 'Recommended',
                    isViewAll: true,
                  ),
                  // child: Text(),
                ),
                Container(
                  height: 500,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              // maxCrossAxisExtent: 160,
                              mainAxisExtent: 240,
                              // childAspectRatio: 4 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ProductComponent(product: listProduct[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
