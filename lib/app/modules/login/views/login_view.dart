import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/button_app.dart';
import 'package:e_commerce/app/component/button_back.dart';
import 'package:e_commerce/app/component/icon_login.dart';
import 'package:e_commerce/app/component/text_form_component.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:e_commerce/const/resource.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  TextEditingController _mailOrPhoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        showBack: true,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 150,
            width: MediaQuery.of(context).size.width - 50,
            margin: EdgeInsets.all(25),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: Container()),
                RichText(
                  text: TextSpan(
                    text: 'Let\'s Get Started!',
                    style: sen70028,
                  ),
                ),
                Text(
                  'Login with Social of fill the form to continue.',
                  style: sen40012opa60,
                ),
                Flexible(flex: 1, child: Container()),
                TextFormComponent(
                  editController: _mailOrPhoneController,
                  hintText: 'Email/Phone',
                  icon: SvgPicture.asset(
                    R.ASSETS_SVG_PHONE_SVG,
                  ),
                ),
                TextFormComponent(
                  editController: _passwordController,
                  hintText: 'Password',
                  icon: SvgPicture.asset(
                    R.ASSETS_SVG_PASSWORD_SVG,
                  ),
                  isSuffixIcon: true,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.FORGOT_PW);
                    },
                    child: Text(
                      'Reset Password',
                      style: sen40011.copyWith(color: color6776FE),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Obx(
                        () => Container(
                          height: 30,
                          width: 30,
                          // color: Colors.red,
                          child: Radio(
                            activeColor: color6776FE,
                            value: controller.loginRadio.value,
                            groupValue: controller.val.value,
                            onChanged: (value) {
                              controller.changeLoginRadio();
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 260,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'By Signing up, you agree to the ',
                                  style: sen40012opa60.copyWith(
                                      color: color717177opa60)),
                              TextSpan(
                                  text: 'Terms of Service and Privacy Policy',
                                  style: sen40012),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 1, child: Container()),
                const Divider(
                  height: 0.5,
                  color: colore7e7e8,
                ),
                Flexible(flex: 1, child: Container()),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: IconLogin(
                          svgFilePath: '${R.ASSETS_SVG_TWITTER_SVG}',
                        ),
                      ),
                      GestureDetector(
                        child: IconLogin(
                          svgFilePath: '${R.ASSETS_SVG_FACEBOOK_SVG}',
                        ),
                      ),
                      GestureDetector(
                        child: IconLogin(
                          svgFilePath: '${R.ASSETS_SVG_APPLE_SVG}',
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 1, child: Container()),
                GestureDetector(
                    child: ButtonApp(text: 'Login'),
                    onTap: () {
                      Get.toNamed(Routes.MAIN);
                    }),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t Have an Account?',
                          style: sen40013.copyWith(color: color717177),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          child: Text(
                            'Sign up',
                            style: sen70013.copyWith(color: color6776FE),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
