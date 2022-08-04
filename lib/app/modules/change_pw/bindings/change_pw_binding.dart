import 'package:get/get.dart';

import '../controllers/change_pw_controller.dart';

class ChangePwBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePwController>(
      () => ChangePwController(),
    );
  }
}
