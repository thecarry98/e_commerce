import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashPageviewController extends GetxController {
  var count = 0.obs;
  PageController control = PageController(
    initialPage: 0,
    keepPage: true,
  );
  //TODO: Implement SplashPageviewController

  @override
  void onInit() {
    super.onInit();
    // print(controller.count)
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    // if (count.value > 2) {
    //   Get.toNamed(Routes.LOGIN);
    // }
  }
}
