import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash/Rectangle4.png'),
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
            child: SafeArea(
              child: Container(
                // width: MediaQuery.of(context).size.width - 50,
                // margin: const EdgeInsets.symmetric(
                //   horizontal: 25,
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'Get Everything \nat Your \nDoorstep',
                          style: sen80033,
                        ),
                      ),
                    ),
                    SizedBox(height: 32, child: Container()),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('nhảy screen');
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: color5B6CFF,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Icon(Icons.next_plan_sharp,
                              color: colorWhite),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Container(
                      // decoration: const BoxDecoration(
                      //   color: Colors.red,
                      // ),
                      padding: EdgeInsets.all(50),
                      height: 550,
                      width: MediaQuery.of(context).size.width + 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/splash/Group33630.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
