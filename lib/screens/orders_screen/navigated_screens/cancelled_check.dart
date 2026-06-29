import 'package:flutter/material.dart';

class CancelledCheck extends StatelessWidget {
  const CancelledCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5CB58),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Color(0xffE95322)),
                ),
              ),
              SizedBox(height: 96),
              Center(
                child: SizedBox(
                  width: 139,
                  height: 139,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/image/circle.png", fit: BoxFit.cover),
                      Positioned(
                        top: 59,
                        left: 30,
                        child: Image.asset(
                          "assets/image/Ellipse 165.png",
                          width: 18,
                          height: 18,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 39),
              Text(
                "¡Order Cancelled!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight(900),
                  color: Color(0xff391713),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Your order has been successfully\n cancelled",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                  color: Color(0xff391713),
                ),
              ),
              SizedBox(height: 271),
              Text(
                "If you have any question reach directly to\n our customer support",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(500),
                  color: Color(0xff391713),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
