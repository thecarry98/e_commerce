import 'package:get/get.dart';

import '../controllers/favorite_menu_controller.dart';

class FavoriteMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteMenuController>(
      () => FavoriteMenuController(),
    );
  }
}
