class OrderItem {
  final String imagepath;
  final String title;
  final String datatime;
  final String price;
  final String itemcount;
  OrderItem({
    required this.imagepath,
    required this.title,
    required this.datatime,
    required this.price,
    required this.itemcount,
  });
  static List<OrderItem> activeOrder = [
    OrderItem(
      imagepath: 'assets/image/Rectangle 134.png',
      title: "Strawberry shake",
      datatime: '29 Nov, 01:20 pm ',
      price: "\$20.00",
      itemcount: "2 items",
    ),
  ];
  static List<OrderItem> completedOrder = [
    OrderItem(
      imagepath: "assets/image/Rectangle 128 (1).png",
      title: "Chicken Curry",
      datatime: '29 Nov, 01:20 pm ',
      price: "\$50.00",
      itemcount: "2 items",
    ),
    OrderItem(
      imagepath: 'assets/image/Rectangle 135.png',
      title: "Bean and\n Vegetable Burger",
      datatime: "10 Nov, 06:05 pm ",
      price: "\$50.00",
      itemcount: "2 items",
    ),
    OrderItem(
      imagepath: "assets/image/Rectangle 136.png",
      title: "Coffee Latte",
      datatime: "10 Nov, 08:30 am ",
      price: '\$8.00',
      itemcount: "1 items",
    ),
    OrderItem(
      imagepath: "assets/image/Re 137.png",
      title: "Strawberry\nCheesecake",
      datatime: "03 Oct, 03:40 pm ",
      price: "\$22.00",
      itemcount: '2 items',
    ),
  ];
  static List<OrderItem> cancelledOrder = [
    OrderItem(
      imagepath: "assets/image/Rectangle 128.png",
      title: "Sushi Wave",
      datatime: "02 Nov, 04:00 pm ",
      price: "\$103.00",
      itemcount: '3 items',
    ),
    OrderItem(
      imagepath: 'assets/image/fruit.png',
      title: "Fruit and Berry\n Tea",
      datatime: '12 Oct, 03:15 pm ',
      price: "\$15.00",
      itemcount: "2 items",
    ),
  ];
}
