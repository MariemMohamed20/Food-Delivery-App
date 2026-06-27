



import 'package:flutter/material.dart';
import 'package:food_delivery/screens/On%20Boarding/on_boarding_order_for_food_screen.dart';


class LaunchWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE85824), 
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset("assets/images/logo2.png"),
            SizedBox(height: 20),

            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 60),
               Container(
                width: 207,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFFF2C94C),
                  borderRadius: BorderRadius.circular(25), 
                ),
                child: Center(
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
            SizedBox(height: 15),
            InkWell(
                  onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>OnBoardingOrderForFoodScreen()),
                  );
               },
              child: Container(
                width: 207,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF2CC),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
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
