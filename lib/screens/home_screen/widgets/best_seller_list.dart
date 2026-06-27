import 'package:flutter/material.dart';

class SellerItems {
  final String imagepath;
  final String price;
  SellerItems({required this.imagepath, required this.price});
}

class BestSellerList extends StatelessWidget {
  BestSellerList({super.key});
  final List<SellerItems> item = [
    SellerItems(imagepath: "assets/image/Rectangle 128.png", price: "\$103.0"),
    SellerItems(
      imagepath: "assets/image/Rectangle 128 (1).png",
      price: "\$50.0",
    ),
    SellerItems(
      imagepath: "assets/image/Rectangle 128 (2).png",
      price: "\$12.99",
    ),
    SellerItems(
      imagepath: "assets/image/Rectangle 128 (3).png",
      price: "\$8.20",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final itemcell = item[index];
          return Container(
            width: 80,
            height: 108,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              image: DecorationImage(
                image: AssetImage(itemcell.imagepath),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 12,
                  left: 35,
                  child: Container(
                    width: 45,
                    height: 25,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color(0xffE95322),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Text(
                      itemcell.price,
                      style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: item.length,
      ),
    );
  }
}
