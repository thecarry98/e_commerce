class Order {
  String? orderID;
  int? quantity;
  double? total;
  int? status;
  // DateTime? date;

  Order(
    this.orderID,
    this.quantity,
    this.total,
    this.status,
    // this.date,
  );
}

Order Order2 = Order(
  'orderid1',
  2,
  234,
  1,
);
