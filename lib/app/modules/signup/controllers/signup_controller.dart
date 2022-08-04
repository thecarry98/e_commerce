import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  var loginRadio = 0.obs;
  var val = 2.obs;
  changeLoginRadio() {
    val.value = loginRadio.value;
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
