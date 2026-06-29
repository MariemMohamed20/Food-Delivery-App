import 'package:flutter/material.dart';
import 'package:food_delivery/core/custom_divider.dart';
import 'package:food_delivery/core/screens_layout.dart';
import 'package:food_delivery/screens/orders_screen/navigated_screens/cancelled_check.dart';
import 'package:food_delivery/screens/orders_screen/widget/custome_container.dart';
import 'package:food_delivery/screens/orders_screen/navigated_screens/widget/enter_text.dart';
import 'package:food_delivery/screens/orders_screen/navigated_screens/widget/list_cancel_reason.dart';

class CancelScreen extends StatelessWidget {
  const CancelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreensLayout(
      topcontent: Center(
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios, color: Color(0xffE95322)),
            Expanded(
              child: Text(
                'Cancel Order',
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
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Praesent pellentesque congue lorem, vel tincidunt tortor.",
              style: TextStyle(
                fontWeight: FontWeight(300),
                color: Color(0xff391713),
              ),
            ),
            CustomDivider(),
            ListCancelReason(),
            SizedBox(height: 11),
            EnterText(title: "Others reason..."),
            SizedBox(height: 31),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CancelledCheck()),
                );
              },
              child: CustomeContainer(title: "Submit", isSelected: true),
            ),
          ],
        ),
      ),
    );
  }
}
