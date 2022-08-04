import 'package:e_commerce/app/data/model/order.dart';
import 'package:e_commerce/app/modules/my_order/views/my_order_view.dart';
import 'package:e_commerce/app/theme/colors.dart';
import 'package:e_commerce/app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

List<Color> colorStatus = [color27AE60, color6776FE, colorc90000];

class OrderComponent extends StatelessWidget {
  OrderComponent({Key? key, this.order}) : super(key: key);
  Order? order;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(order!.orderID);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
        decoration: const BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'OrderID : ${order!.orderID} ',
                    style: sen70016.copyWith(
                      color: color130F26,
                    ),
                  ),
                  Text(
                    'date',
                    style: sen40016.copyWith(
                      color: color909090,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: colorf0f0f0, height: 2),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quanitity: ',
                          style: sen70016.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: '${order!.quantity}',
                          style: sen70016.copyWith(
                            color: color130F26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total: ',
                          style: sen70016.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: '${order!.total}',
                          style: sen70016.copyWith(
                            color: color130F26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 36,
                    decoration: BoxDecoration(
                      color: color6776FE,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Detail',
                        style: sen70016.copyWith(
                          color: colorWhite,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '${statusName[order!.status!]}',
                      style: sen70016.copyWith(
                        color: colorStatus[order!.status!],
                      ),
                    ),
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
