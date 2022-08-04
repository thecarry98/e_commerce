import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/resource.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_pageview_controller.dart';

class SplashPageviewView extends GetView<SplashPageviewController> {
  // const SplashPageviewView({Key? key}) : super(key: key);
  List<String> buttonString = ['Next', 'Next', 'Get started'];
  final list = [
    {
      "image": R.ASSETS_IMAGES_FRAME1_PNG,
      "title": "E-Commerce \n Appliction",
      'des':
          'E Commerce application template Buy this code template in codecanyon.',
    },
    {
      "image": R.ASSETS_IMAGES_FRAME2_PNG,
      "title": "Choose Item",
      'des':
          'Choose Items wherever you are with this application to make life easier.'
    },
    {
      "image": R.ASSETS_IMAGES_FRAME3_PNG,
      "title": "Buy Item",
      'des':
          'Shop from thousand brands in the world in one application at throwaway prices.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    R.ASSETS_IMAGES_ILUSTRATION_PNG,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: MediaQuery.of(context).size.height / 1.5,
              // margin: EdgeInsets.all(25),
              child: pageView(),
            ),
            Flexible(child: Container(), flex: 2),
            Row(
              children: [
                Obx(
                  () => Row(
                    children: list.map((e) {
                      if (list.indexOf(e) == controller.count.value) {
                        return Container(
                            margin: EdgeInsets.all(8),
                            width: 14,
                            height: 5,
                            decoration: BoxDecoration(
                                color: color6776FE,
                                borderRadius: BorderRadius.circular(5)));
                      }
                      return Container(
                          margin: EdgeInsets.all(8),
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: color8399A9,
                              borderRadius: BorderRadius.circular(12)));
                    }).toList(),
                  ),
                ),
                Flexible(child: Container(), flex: 1),
                GestureDetector(
                  onTap: () {
                    if (controller.count.value == 2) {
                      Get.toNamed(Routes.LOGIN);
                    } else {
                      controller.count.value = controller.count.value + 1;
                      controller.control.jumpToPage(controller.count.value);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 190,
                    decoration: const BoxDecoration(
                      color: color6776FE,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Obx(
                      () => Text(
                        buttonString[controller.count.value],
                        // ? buttonString[controller.count.value]
                        // : '0',
                        style: const TextStyle(
                          color: colorWhite,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    // child:
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget pageView() => PageView(
        controller: controller.control,
        onPageChanged: (v) {
          controller.count.value = v;
        },
        children: list.map((e) {
          return Container(
            child: Container(
              // height: 100,
              // color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(e['image'].toString()),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 32, child: Container()),
                  Text(e['title'].toString(), style: sen70040),
                  Text(
                    e['des'].toString(),
                    style: sen40016,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      );
}
