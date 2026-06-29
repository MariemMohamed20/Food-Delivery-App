import 'package:flutter/material.dart';

class ScreensLayout extends StatelessWidget {
  final Widget topcontent;
  final Widget bottomcontent;
  const ScreensLayout({
    super.key,
    required this.topcontent,
    required this.bottomcontent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5CB58),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: topcontent,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: bottomcontent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
