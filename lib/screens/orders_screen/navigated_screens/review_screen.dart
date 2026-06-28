import 'package:flutter/material.dart';
import 'package:food_delivery/core/screens_layout.dart';
import 'package:food_delivery/screens/orders_screen/navigated_screens/widget/enter_text.dart';
import 'package:food_delivery/screens/orders_screen/navigated_screens/widget/rating_file.dart';
import 'package:food_delivery/screens/orders_screen/widget/custome_container.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  String selectedButton = "submit";
  @override
  Widget build(BuildContext context) {
    return ScreensLayout(
      topcontent: Center(
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios, color: Color(0xffE95322)),
            Expanded(
              child: Text(
                'Leave a Review',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF8F8F8),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomcontent: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/image/Rectangle 128 (1).png",
              width: 157,
              height: 157,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              "Chicken Curry",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight(700),
                color: Color(0xff391713),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "We'd love to know what you\n think of your dish.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight(300),
                color: Color(0xff391713),
              ),
            ),
            SizedBox(height: 15),
            RatingFile(),
            SizedBox(height: 15),
            Text(
              "Leave us your comment!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight(300),
                color: Color(0xff391713),
              ),
            ),
            SizedBox(height: 7),
            EnterText(title: "Write Review..."),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButton = "cancel";
                    });
                  },
                  child: CustomeContainer(
                    title: "cancel",
                    isSelected: selectedButton == "cancel",
                  ),
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButton = "submit";
                    });
                  },
                  child: CustomeContainer(
                    title: "submit",
                    isSelected: selectedButton == "submit",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
