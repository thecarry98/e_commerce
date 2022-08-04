import 'package:e_commerce/app/modules/phone_verify/views/phone_verify_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneVerifyController extends GetxController {
  //TODO: Implement PhoneVerifyController
  var field;
  void nextFocus(int index, BuildContext context) {
    FocusScope.of(context).nextFocus();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
