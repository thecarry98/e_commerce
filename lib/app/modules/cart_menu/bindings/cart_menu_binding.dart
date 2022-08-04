import 'package:get/get.dart';

import '../controllers/cart_menu_controller.dart';

class CartMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartMenuController>(
      () => CartMenuController(),
    );
    // Get.lazyPut<MainController>(
    //   () => MainController(),
    // );
  }
}
