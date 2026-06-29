import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best seller",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight(500)),
        ),
        Row(
          children: [
            Text(
              "View All",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight(600),
                color: Color(0xffE95322),
              ),
            ),
            SizedBox(width: 9),
            Icon(Icons.arrow_forward_ios, color: Color(0xffE95322), size: 13),
          ],
        ),
      ],
    );
  }
}
