import 'package:e_commerce/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../cart_menu/controllers/cart_menu_controller.dart';
import '../../favorite_menu/controllers/favorite_menu_controller.dart';
import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<FavoriteMenuController>(
      () => FavoriteMenuController(),
    );
    Get.lazyPut<CartMenuController>(
      () => CartMenuController(),
    );
  }
}
