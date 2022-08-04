import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/button_app.dart';
import 'package:e_commerce/app/component/button_back.dart';
import 'package:e_commerce/app/component/icon_login.dart';
import 'package:e_commerce/app/component/text_form_component.dart';
import 'package:e_commerce/app/modules/forgot_pw/controllers/forgot_pw_controller.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgotPwView extends GetView<ForgotPwController> {
  TextEditingController _phoneController = TextEditingController();
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        showBack: true,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          margin: EdgeInsets.all(25),
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 1, child: Container()),
              RichText(
                text: TextSpan(
                  text: 'Forgot your password?',
                  style: sen70028,
                ),
              ),
              Text(
                'If you need help resetting your password we can help by sending you a link to reset it.',
                style: sen40012opa60,
              ),
              Flexible(flex: 1, child: Container()),
              TextFormComponent(
                editController: _phoneController,
                hintText: 'Your Phone Number',
                icon: Text(
                  '+84',
                  style: sen40016.copyWith(color: colorBlack),
                ),
                keyboard: TextInputType.number,
              ),
              Flexible(flex: 4, child: Container()),
              GestureDetector(
                  child: ButtonApp(text: 'Next'),
                  onTap: () {
                    Get.toNamed(Routes.CHANGE_PW);
                  }),
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
