import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../theme/colors.dart';
import '../../../theme/text_style.dart';

class SizeComponent extends StatelessWidget {
  SizeComponent({Key? key, this.size}) : super(key: key);
  String? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: color6776FE,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          '$size',
          style: sen40016.copyWith(
            color: colorWhite,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
