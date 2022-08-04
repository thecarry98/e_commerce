import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/resource.dart';
import '../theme/colors.dart';

class ButtonCartAppbar extends StatelessWidget {
  const ButtonCartAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          R.ASSETS_SVG_CART_APP_BAR_SVG,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
