import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CustomeContainer({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: isSelected ? Color(0xffE95322) : Color(0xffFFDECF),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight(500),
            color: isSelected ? Color(0xffFFFFFF) : Color(0xffE95322),
          ),
        ),
      ),
    );
  }
}
