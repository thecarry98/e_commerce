import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/button_app.dart';
import 'package:e_commerce/app/component/button_back.dart';
import 'package:e_commerce/app/component/text_form_component.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/change_pw_controller.dart';

class ChangePwView extends GetView<ChangePwController> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();

  // const ChangePwView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        showBack: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(0),
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 50,
                margin: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Flexible(child: Container(), flex: 1),
                    Text(
                      'Change Password',
                      style: sen70016.copyWith(
                        fontSize: 22,
                        color: color130F26,
                      ),
                    ),
                    Flexible(child: Container(), flex: 2),
                  ],
                ),
              ),
              // Flexible(flex: 1, child: Container()),

              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height - 130,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: colorf8fbff,
                    // color: Colors.red,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(25),
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Password',
                          style: sen70016.copyWith(
                            fontSize: 14,
                            color: color130F26,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormApp(
                          editController: _passwordController,
                          hintText: '',
                          isPass: true,
                          isSuffixIcon: true,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'New Password',
                          style: sen70016.copyWith(
                            fontSize: 14,
                            color: color130F26,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormApp(
                          editController: _newPasswordController,
                          hintText: '',
                          isPass: true,
                          isSuffixIcon: true,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Confirm Password',
                          style: sen70016.copyWith(
                            fontSize: 14,
                            color: color130F26,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormApp(
                          editController: _confirmPasswordController,
                          hintText: '',
                          isPass: true,
                          isSuffixIcon: true,
                        ),
                        Flexible(
                          child: Container(),
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: ButtonApp(
                            text: 'Submit',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Flexible(child: Container(), flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
