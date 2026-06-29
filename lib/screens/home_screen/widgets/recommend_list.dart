import 'package:flutter/material.dart';

class Recommend {
  final String imagepath;
  final String price;
  final String favorite;
  final String rate;
  final String rateitem;
  Recommend({
    required this.imagepath,
    required this.price,
    required this.favorite,
    required this.rate,
    required this.rateitem,
  });
}

class RecommendList extends StatelessWidget {
  RecommendList({super.key});
  final List<Recommend> recommenditem = [
    Recommend(
      imagepath: "assets/image/Rectangle 137.png",
      price: "\$10.0",
      favorite: "assets/image/Vector 158 (Stroke).png",
      rate: "5.0",
      rateitem: "assets/image/star.png",
    ),
    Recommend(
      imagepath: "assets/image/Rectangle 6.png",
      price: "\$25.0",
      favorite: "assets/image/Vector 158 (Stroke).png",
      rate: "5.0",
      rateitem: "assets/image/star.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: recommenditem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
      ),
      itemBuilder: (context, index) {
        final item = recommenditem[index];
        return Container(
          width: 159,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(item.imagepath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 17,
                right: 1,
                child: Container(
                  width: 45,
                  height: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: Color(0xffE95322),
                  ),
                  child: Text(
                    item.price,
                    style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 15,
                child: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item.rate,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff391713),
                            ),
                          ),
                          Image.asset(item.rateitem),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(item.favorite),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
