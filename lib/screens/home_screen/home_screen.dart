import 'package:flutter/material.dart';
import 'package:food_delivery/core/custom_divider.dart';
import 'package:food_delivery/core/screens_layout.dart';
import 'package:food_delivery/screens/home_screen/widgets/best_seller_list.dart';
import 'package:food_delivery/screens/home_screen/widgets/categories_list.dart';
import 'package:food_delivery/screens/home_screen/widgets/home_banner/home_banner.dart';
import 'package:food_delivery/screens/home_screen/widgets/icon_container.dart';
import 'package:food_delivery/screens/home_screen/widgets/recommend_list.dart';
import 'package:food_delivery/screens/home_screen/widgets/text_search_field.dart';
import 'package:food_delivery/screens/home_screen/widgets/view_all.dart';
import 'package:food_delivery/screens/home_screen/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreensLayout(
      topcontent: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(height: 80),
              Expanded(child: TextSearchField()),
              SizedBox(width: 29),
              IconContainer(assetsvg: 'assets/icons/Vector.svg'),
              SizedBox(width: 7),
              IconContainer(assetsvg: "assets/icons/Vector (1).svg"),
              SizedBox(width: 8),
              IconContainer(assetsvg: "assets/icons/Vector (2).svg"),
            ],
          ),
          SizedBox(height: 5),
          WelcomeText(),
          SizedBox(height: 17),
        ],
      ),
      bottomcontent: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CategoriesList(),
            CustomDivider(),
            SizedBox(height: 8),
            ViewAll(),
            SizedBox(height: 14),
            BestSellerList(),
            SizedBox(height: 20),
            HomeBanner(),
            SizedBox(height: 21),
            Text(
              "Recommend",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 9),
            RecommendList(),
          ],
        ),
      ),
    );
  }
}
