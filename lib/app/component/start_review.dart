import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StartReview extends StatelessWidget {
  StartReview({Key? key, this.starReview}) : super(key: key);
  double? starReview;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 11,
      initialRating: starReview ?? 0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
        // size: 14,
      ),
      ignoreGestures: true,
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
