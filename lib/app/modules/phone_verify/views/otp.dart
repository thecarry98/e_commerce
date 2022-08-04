import 'package:e_commerce/app/modules/phone_verify/controllers/phone_verify_controller.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OTP extends GetView<PhoneVerifyController> {
  const OTP({Key? key, required this.isEnter}) : super(key: key);
  final bool isEnter;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        width: 56,
        height: 56,
        margin: const EdgeInsets.all(12),
        decoration: isEnter
            ? BoxDecoration(
                color: colorWhite,
                borderRadius: const BorderRadius.all(
                  Radius.circular(56),
                ),
                border: Border.all(
                  color: color130F26,
                  width: 1,
                ),
              )
            : BoxDecoration(
                color: color12121d.withOpacity(0.05),
                borderRadius: const BorderRadius.all(
                  Radius.circular(56),
                ),
                border: Border.all(
                  color: color12121d.withOpacity(0.1),
                  width: 1,
                ),
              ),
        alignment: Alignment.center,
        // child: Text(num.toString()),
        child: Center(
          child: TextField(
            // controller: otpController,
            onChanged: (value) {
              controller.nextFocus(value.length, context);
            },
            readOnly: !isEnter,
            textAlign: TextAlign.center,
            maxLength: 1,
            decoration: const InputDecoration(
              hintText: '',
              counterText: '',
              border: InputBorder.none,
              // enabled: false,
              // labelStyle: TextStyle(fontSize: 20),
              // border: OutlineInputBorder(
              //   borderSide: BorderSide(width: 1, color: Colors.black),
              // ),
              // disabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(width: 1, color: Colors.black),
              // ),
            ),
          ),
        ),
      );
    });
  }
}
