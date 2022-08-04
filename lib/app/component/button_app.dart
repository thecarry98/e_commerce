import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp({Key? key, required this.text, this.width}) : super(key: key);
  final String text;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
        color: color6776FE,
      ),
      child: Text(
        text,
        style: sen70016.copyWith(color: colorWhite),
      ),
      alignment: Alignment.center,
    );
  }
}
