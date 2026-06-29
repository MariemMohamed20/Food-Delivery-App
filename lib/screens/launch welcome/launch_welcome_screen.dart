import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';

class LaunchWelcomeScreen extends StatelessWidget {
  const LaunchWelcomeScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE85824),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo2.png"),
            const SizedBox(height: 20),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: () {
               Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const BottomNavBarScreen()));
              },
              borderRadius: BorderRadius.circular(25), 
              child: Container(
                width: 207,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2C94C),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Color(0xFFE85824),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBarScreen()),
                );
              },
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: 207,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF2CC),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFFE85824),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
