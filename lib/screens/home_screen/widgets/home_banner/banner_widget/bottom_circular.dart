import 'package:flutter/material.dart';

class BottomCircular extends StatelessWidget {
  const BottomCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      left: -8,
      child: Image.asset("assets/image/Ellipse 12.png", width: 46, height: 46),
    );
  }
}
