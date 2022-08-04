// import 'dart:ffi';

import 'package:e_commerce/app/modules/login/controllers/login_controller.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TextFormComponent extends StatefulWidget {
  TextFormComponent({
    Key? key,
    required this.editController,
    required this.hintText,
    required this.icon,
    this.isPass = false,
    this.isSuffixIcon = false,
    this.keyboard = TextInputType.text,
    // this.callback,
  }) : super(key: key);
  TextEditingController editController; //= TextEditingController();
  String hintText;
  Widget icon;
  var isPass;
  bool isSuffixIcon;
  TextInputType? keyboard;
  // Function? callback;

  @override
  State<TextFormComponent> createState() => _TextFormComponentState();
}

class _TextFormComponentState extends State<TextFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0x1a12121d),
          ),
        ),
      ),
      child: TextField(
        keyboardType: widget.keyboard,
        style: sen40020,
        controller: widget.editController,
        decoration: InputDecoration(
          // icon: SvgPicture.asset(
          //   'assets/svg/svg_icon/mail.svg',
          // ),
          icon: widget.icon,
          hintText: widget.hintText,
          hintStyle: sen40016opa30,
          border: InputBorder.none,
          suffixIcon: widget.isSuffixIcon == true
              ? IconButton(
                  icon: Icon(
                    widget.isPass == true
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: color979797,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isPass = !widget.isPass;
                    });
                  },
                )
              : null,
        ),
        obscureText: widget.isPass,
      ),
    );
  }
}

class TextFormApp extends StatefulWidget {
  TextFormApp({
    Key? key,
    required this.editController,
    required this.hintText,
    // required this.icon,
    this.isPass = false,
    this.isSuffixIcon = false,
    this.keyboard = TextInputType.text,
  }) : super(key: key);

  TextEditingController editController; //= TextEditingController();
  String hintText;
  var isPass;
  bool isSuffixIcon;
  TextInputType? keyboard;

  @override
  State<TextFormApp> createState() => _TextFormAppState();
}

class _TextFormAppState extends State<TextFormApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorebf0ff,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        // color: Colors.blue,
      ),
      child: TextField(
        keyboardType: widget.keyboard,
        style: sen40020,
        controller: widget.editController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: sen40016opa30,
          border: InputBorder.none,
          suffixIcon: widget.isSuffixIcon == true
              ? IconButton(
                  icon: Icon(
                    widget.isPass == true
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: color979797,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isPass = !widget.isPass;
                    });
                  },
                )
              : null,
        ),
        obscureText: widget.isPass,
      ),
    );
  }
}
