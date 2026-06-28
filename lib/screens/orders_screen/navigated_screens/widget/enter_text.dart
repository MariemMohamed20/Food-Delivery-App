import 'package:flutter/material.dart';

class EnterText extends StatelessWidget {
  final String title;
  const EnterText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        maxLines: 4,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(
            fontWeight: FontWeight(100),
            color: Color(0xff391713),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Color(0xffF3E9B5)),
          ),
          fillColor: Color(0xffF3E9B5),
          filled: true,
        ),
      ),
    );
  }
}
