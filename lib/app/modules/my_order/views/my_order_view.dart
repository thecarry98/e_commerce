import 'package:e_commerce/app/component/appbar_custom.dart';
import 'package:e_commerce/app/component/text_form_component.dart';
import 'package:e_commerce/app/data/model/order.dart';
import 'package:e_commerce/app/modules/my_order/component/order_component.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_order_controller.dart';

List<String> statusName = ['Delivered', 'Processing', 'Canceled'];

List<Order> list = [
  Order('order1', 3, 4, 0),
  Order('order2', 4, 34, 0),
  Order('order3', 4, 34, 2),
  Order('order4', 4, 34, 1),
  Order('order5', 4, 34, 2),
  Order('order2', 4, 34, 1),
  Order('order2', 4, 34, 2),
  Order('order3', 4, 34, 2),
  Order('order3', 4, 34, 2),
];

class MyOrderView extends GetView<MyOrderController> {
  // const MyOrderView({Key? key}) : super(key: key);
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
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  // indicatorSize: TabBarIndicatorSize.tab,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: color6776FE),
                    insets: EdgeInsets.symmetric(horizontal: 40, vertical: -15),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  unselectedLabelStyle: sen40016.copyWith(
                    fontSize: 18,
                  ),
                  unselectedLabelColor: color909090,
                  labelStyle: sen40016.copyWith(
                    fontSize: 18,
                  ),
                  labelColor: color303030,
                  tabs: statusName
                      .map(
                        (e) => Text(e),
                      )
                      .toList(),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Expanded(
                      //   child: pageView(),
                      // ),
                      _page(0),
                      _page(1),
                      _page(2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pageView() => PageView(
        controller: controller.control,
        onPageChanged: (v) {
          controller.count.value = v;
        },
        children: [
          _page(0),
          _page(1),
          _page(2),
        ],
      );
  Widget _page(int i) => Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => list[index].status == i
              ? OrderComponent(order: list[index])
              : Container(),
        ),
      );
}
