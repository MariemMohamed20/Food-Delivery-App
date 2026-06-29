import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/core/custom_divider.dart';

class CancelResones {
  final String reasone;
  CancelResones({required this.reasone});
}

class ListCancelReason extends StatelessWidget {
  ListCancelReason({super.key});

  List<CancelResones> reasoneItem = [
    CancelResones(reasone: "Lorem ipsum dolor sit amet"),
    CancelResones(reasone: "Lorem ipsum dolor sit amet"),
    CancelResones(reasone: "Lorem ipsum dolor sit amet"),
    CancelResones(reasone: "Lorem ipsum dolor sit amet"),
    CancelResones(reasone: "Lorem ipsum dolor sit amet"),
    CancelResones(reasone: "Others"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) {
        final item = reasoneItem[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.reasone,
              style: TextStyle(fontSize: 15, color: Color(0xff391713)),
            ),
            SvgPicture.asset("assets/icons/Check Point.svg"),
          ],
        );
      }),
      separatorBuilder: (context, index) {
        return CustomDivider();
      },
      itemCount: reasoneItem.length,
    );
  }
}
