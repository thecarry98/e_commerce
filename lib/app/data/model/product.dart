class Product {
  String? linkImage;
  String? title;
  double? priceBefore;
  double? priceAfter;
  int? sale;
  int? sold;
  double? review;

  Product(this.linkImage, this.title, this.priceBefore, this.priceAfter,
      this.sale, this.sold, this.review);
}

List<Product> listProduct = [
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title1',
    null,
    344,
    10,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title2',
    null,
    344,
    10,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title3',
    null,
    300,
    null,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title4',
    null,
    344,
    10,
    999,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title5',
    null,
    344,
    10,
    235,
    5,
  ),
];

List<Product> favoriteProduct = [
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title1',
    null,
    344,
    10,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title2',
    null,
    344,
    10,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title3',
    null,
    300,
    null,
    200,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title4',
    null,
    344,
    10,
    999,
    4.5,
  ),
  Product(
    'https://cdn.dashhudson.com/media/640/1626672749.231006131723.jpeg',
    'Title5',
    null,
    344,
    10,
    235,
    5,
  ),
];
