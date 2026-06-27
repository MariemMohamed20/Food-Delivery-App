


import 'package:flutter/material.dart';
import 'package:food_delivery/screens/launch%20welcome/launch_welcome_screen.dart';

class LaunchFirstScreen extends StatefulWidget {
  const LaunchFirstScreen({super.key});

  @override
  State<LaunchFirstScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<LaunchFirstScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LaunchWelcomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5CB58),
      body: Center(child: Image.asset("assets/images/logo1.png")),
    );
  }
}
