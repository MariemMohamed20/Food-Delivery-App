import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories {
  final String assetssvg;
  final String title;
  Categories({required this.assetssvg, required this.title});
}

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  final List<Categories> category = [
    Categories(assetssvg: "assets/icons/Snacks.svg", title: "snacks"),
    Categories(assetssvg: "assets/icons/Meals.svg", title: "Meals"),
    Categories(assetssvg: "assets/icons/Vegan.svg", title: "Vegan"),
    Categories(assetssvg: "assets/icons/Desserts.svg", title: "Desserts"),
    Categories(assetssvg: "assets/icons/Drinks.svg", title: "Drinks"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = category[index];
          return Column(
            children: [
              Container(
                width: 75,
                height: 95,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xffF3E9B5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SvgPicture.asset(item.assetssvg, width: 49, height: 11),
              ),
              SizedBox(height: 5),
              Text(item.title, style: TextStyle(fontSize: 12)),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 19);
        },
        itemCount: category.length,
      ),
    );
  }
}
