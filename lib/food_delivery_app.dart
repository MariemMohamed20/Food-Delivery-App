


import 'package:flutter/material.dart';
import 'package:food_delivery/screens/splash/launch_first_screen.dart';


class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LaunchFirstScreen (),
    );
  }
}