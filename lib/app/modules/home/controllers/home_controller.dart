import 'dart:async';

import 'package:e_commerce/app/data/model/countdown.dart';
import 'package:get/get.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final countDown = CountDown(3, 59, 59);

  late Timer _timer;
  late Timer _timer2;
  var count = 59.obs;
  var hour = 4.obs;
  var minutes = 59.obs;
  @override
  void onInit() {
    super.onInit();
    startTimeSecond();
  }

  void startTimeSecond() {
    count = 59.obs;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > 0) {
        count--;
        // print(count);
        update();
      } else {
        // _timer.cancel();
        // count = 59.obs;
        // startTimeSecond();
        update();
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void increment() => count.value++;
}
