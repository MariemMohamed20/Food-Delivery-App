import 'package:flutter/material.dart';

class TopCircular extends StatelessWidget {
  const TopCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -18,
      left: 140,
      child: Image.asset("assets/image/Ellipse 13.png", width: 55, height: 55),
    );
  }
}
