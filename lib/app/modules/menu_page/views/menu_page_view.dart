import 'package:e_commerce/app/component/menu/category_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../component/appbar_custom.dart';
import '../../../theme/colors.dart';
import '../../home/views/home_view.dart';
import '../controllers/menu_page_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuPageView extends GetView<MenuPageController> {
  const MenuPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        showBack: true, title: 'My Order',
        // preferredSize: 80,
      ),
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: colorf8fbff,
              // color: Colors.red,
            ),
            child: AlignedGridView.count(
                crossAxisCount: 4,
                itemCount: list.length,
                itemBuilder: (context, index) => Container(
                    // margin: EdgeInsets.all(2),
                    child: CategoryMenu(category: list[index])))),
      ),
    );
  }
}
