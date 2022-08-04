import 'package:get/get.dart';

enum Choose { choosed, noChoosede }

class LoginController extends GetxController {
  // LoginController({required this.isPassController});
  //TODO: Implement LoginController

  var isPassController = false.obs;
  var loginRadio = 0.obs;
  var val = 2.obs;
  changeLoginRadio() {
    val.value = loginRadio.value;
  }

  changeIsPass() {
    isPassController.value = !isPassController.value;
    print(isPassController.value);
  }

  // get isPass => isPassController.value;

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
