import 'package:e_commerce/app/data/model/product.dart';
import 'package:e_commerce/app/data/model/user.dart';

class UserReviewProduct {
  User? user;
  Product? product;
  String? content;
  double? starReview;
  DateTime? date;

  UserReviewProduct(User? user, Product? product, String? content,
      double? starReview, DateTime? date);
}
