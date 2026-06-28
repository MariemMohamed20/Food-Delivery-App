import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Good Morning",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Color(0xffF8F8F8),
          ),
        ),
        Text(
          "Rise and shine! It's breakfast time",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight(500),
            color: Color(0xffE95322),
          ),
        ),
      ],
    );
  }
}
