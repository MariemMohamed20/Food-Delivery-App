import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homeslider {
  final String description;
  final String imagePath;
  final String title;
  Homeslider({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items:
          [
            Homeslider(
              title: "30% OFF",
              description: "Experience our\n delicious new dish",
              imagePath: "assets/image/Photo Pizza.png",
            ),
            Homeslider(
              title: "30% OFF",
              description: "Experience our\ndelicious new dish",
              imagePath: "assets/image/Rectangle 128 (3).png",
            ),
            Homeslider(
              title: "30% OFF",
              description: "Experience our\n delicious new dish",
              imagePath: "assets/image/Rectangle 128 (2).png",
            ),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: double.infinity,
                    height: 128,
                    color: Color(0xffE95322),
                    child: Stack(
                      children: [
                        Positioned(
                          top: -37,
                          left: 106,
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5CB58),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -40,
                          left: -20,
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5CB58),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 14,
                            top: 27,
                            bottom: 27,
                          ),
                          child: Positioned.fill(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      i.description,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffF8F8F8),
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      i.title,
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffF8F8F8),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(width: 12),
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    i.imagePath,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
    );
  }
}
