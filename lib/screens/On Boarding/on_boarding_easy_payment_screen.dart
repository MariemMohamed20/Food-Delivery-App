

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/screens/On%20Boarding/on_boarding_fast_delivery_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingEasyPaymentScreen extends StatefulWidget {
  const OnBoardingEasyPaymentScreen({super.key});
  @override
  State<OnBoardingEasyPaymentScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingEasyPaymentScreen> {
  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xffF5CB58)),
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle 146.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: InkWell(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      "Skip ",
                      style: TextStyle(
                        color: Color(0xffE95322),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Color(0xffE95322),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   SvgPicture.asset("assets/icons/icon2.svg"),
                    const Text(
                      "Easy Payment",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffE95322),
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff391713)),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.deepOrange,
                        dotColor: Color(0xFFFFECB3),
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 6,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const OnBoardingFastDeliveryScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 133,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE95322),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),),
                  ],
                ),),
            ),
          ],
        ),),
    );
  }
}