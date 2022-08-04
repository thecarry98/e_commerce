import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../component/start_review.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_style.dart';

class ReviewComponent extends StatelessWidget {
  const ReviewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //avatar
                  Container(
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(48),
                      ),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: sen70016.copyWith(
                          fontSize: 14,
                          color: colorBlack,
                        ),
                      ),
                      StartReview(starReview: 5),
                    ],
                  ),
                ],
              ),
              Text(
                'December 10, 2022',
                style: sen40011.copyWith(
                  fontSize: 10,
                  color: color787878,
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit,',
              style: sen40012.copyWith(
                color: color787878,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
