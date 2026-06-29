import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class RatingFile extends StatelessWidget {
  const RatingFile({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) =>
          SvgPicture.asset("assets/icons/bot-star.svg"),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
