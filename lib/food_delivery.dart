import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/home_screen.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
