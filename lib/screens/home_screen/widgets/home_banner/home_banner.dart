import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_banner/banner_widget/bottom_circular.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_banner/banner_widget/top_circular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int activeIndex = 0;
  final List<Homeslider> homebanner = [
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
      description: "Experience our\ndelicious new dish",
      imagePath: "assets/image/Rectangle 128 (2).png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: homebanner.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    color: Color(0xffE95322),
                    child: Stack(
                      children: [
                        TopCircular(),
                        BottomCircular(),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      i.description,
                                      textAlign: TextAlign.center,
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
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                i.imagePath,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 5),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: homebanner.length,
          effect: WormEffect(
            dotHeight: 4,
            dotWidth: 30,
            activeDotColor: Color(0xffE95322),
            dotColor: Color(0xffF5CB58),
          ),
        ),
      ],
    );
  }
}
