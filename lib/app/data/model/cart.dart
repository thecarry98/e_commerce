import 'package:e_commerce/app/data/model/product.dart';

class Cart {
  int? count;
  Product? product;

  Cart(this.product, this.count);
}

List<Cart> listCart = [
  Cart(
    Product(
      'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
      'Title2',
      null,
      244,
      10,
      200,
      4.5,
    ),
    5,
  ),
  Cart(
    Product(
      'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
      'Title3',
      null,
      344,
      10,
      300,
      4.5,
    ),
    5,
  ),
  Cart(
    Product(
      'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
      'Title1',
      null,
      344,
      10,
      500,
      4.5,
    ),
    5,
  ),
];
