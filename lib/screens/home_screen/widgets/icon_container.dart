import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainer extends StatelessWidget {
  final String assetsvg;
  const IconContainer({super.key, required this.assetsvg});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(assetsvg),
    );
  }
}
