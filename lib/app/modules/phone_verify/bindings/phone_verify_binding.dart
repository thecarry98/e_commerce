import 'package:get/get.dart';

import '../controllers/phone_verify_controller.dart';

class PhoneVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneVerifyController>(
      () => PhoneVerifyController(),
    );
  }
}
