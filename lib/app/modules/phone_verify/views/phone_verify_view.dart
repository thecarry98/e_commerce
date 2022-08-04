import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/button_app.dart';
import 'package:e_commerce/app/component/button_back.dart';
import 'package:e_commerce/app/component/text_form_component.dart';
import 'package:e_commerce/app/modules/phone_verify/views/otp.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/phone_verify_controller.dart';

List<OTP> list = [
  OTP(isEnter: true),
  OTP(isEnter: true),
  OTP(isEnter: true),
  OTP(isEnter: true),
  // OTP(isEnter: false),
  // OTP(isEnter: false),
  // OTP(isEnter: false),
];

class PhoneVerifyView extends GetView<PhoneVerifyController> {
  // const PhoneVerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(showBack: true),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          margin: EdgeInsets.all(25),
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonBack(),
              Flexible(flex: 1, child: Container()),
              RichText(
                text: TextSpan(
                  text: 'Phone Verification',
                  style: sen70028,
                ),
              ),
              Text(
                'Please enter the 4-digit code send to you at',
                style: sen40012opa60,
              ),
              Text(
                'Phone get back',
                style: sen70016,
              ),
              Container(
                child: Row(children: list),
              ),
              Flexible(flex: 1, child: Container()),
              GestureDetector(
                child: Text(
                  'Resend Code',
                  style: sen40012.copyWith(color: color6776FE),
                ),
              ),
              Flexible(flex: 4, child: Container()),
              GestureDetector(child: ButtonApp(text: 'Reset password')),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
