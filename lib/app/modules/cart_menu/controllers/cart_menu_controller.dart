import 'package:get/get.dart';

import '../../../data/model/cart.dart';

class CartMenuController extends GetxController {
  //TODO: Implement CartMenuController

  final sum = 0.0.obs;
  final count = 0.obs;
  final listcart = List<Cart>.empty(growable: true).obs;
  @override
  void onInit() {
    super.onInit();
    listcart.addAll(listCart);
    sumTotal();
  }

  // submit() {
  //   // onInit();
  //   sumTotal(listCart);
  // }

  sumTotal() {
    listcart.forEach((e) {
      sum.value += (e.product?.priceAfter ?? 0) * (e.count ?? 0);
    });
    // return sum.value;
  }

  addCount(Cart list) {
    count.value += 1;
  }

  subCount(Cart list) {
    count.value -= 1;
  }

  addTocart(Cart list) {
    listcart[listcart.indexOf(list)].count = count.value;

    // sumTotal();
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
