import 'package:e_commerce/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconLogin extends StatelessWidget {
  IconLogin({Key? key, required this.svgFilePath}) : super(key: key);

  String svgFilePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(56),
        ),
        border: Border.all(
          color: color12121d.withOpacity(0.1),
          width: 0.5,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(svgFilePath),
      ),
    );
  }
}
