import 'package:get/get.dart';

import '../controllers/splash_pageview_controller.dart';

class SplashPageviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashPageviewController>(
      () => SplashPageviewController(),
    );
  }
}
