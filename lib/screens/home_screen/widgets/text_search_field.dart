import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextSearchField extends StatelessWidget {
  const TextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 200,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          hint: Padding(
            padding: const EdgeInsets.only(left: 12, top: 7, bottom: 8),
            child: Text(
              "search",
              style: TextStyle(
                fontWeight: FontWeight(300),
                fontSize: 12,
                color: Color(0xff676767),
              ),
            ),
          ),
          suffixIconConstraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
          suffixIcon: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xffE95322),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/vec.svg", width: 15),
          ),
          fillColor: Color(0xffFFFFFF),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
