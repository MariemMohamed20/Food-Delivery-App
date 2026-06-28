import 'package:flutter/material.dart';
import 'package:food_delivery/screens/orders_screen/widget/custom_order_item.dart';
import 'package:food_delivery/screens/orders_screen/widget/custome_container.dart';

class OrderCardWidget extends StatefulWidget {
  final OrderItem item;
  final int tabIndex;
  const OrderCardWidget({
    super.key,
    required this.item,
    required this.tabIndex,
  });

  @override
  State<OrderCardWidget> createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  int cardButtonIndex = -1;
  bool isFirstButtonselected = false;
  bool isSecondButtonselected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image.asset(widget.item.imagepath, fit: BoxFit.cover),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: Color(0xff391713),
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        widget.item.price,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                          color: Color(0xffE95322),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.datatime,
                        style: TextStyle(
                          fontWeight: FontWeight(300),
                          color: Color(0xff391713),
                        ),
                      ),
                      Text(
                        widget.item.itemcount,
                        style: TextStyle(
                          fontWeight: FontWeight(300),
                          color: Color(0xff391713),
                        ),
                      ),
                    ],
                  ),
                  if (widget.tabIndex != 0) ...[
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          widget.tabIndex == 1
                              ? Icons.check_circle
                              : Icons.cancel,
                          color: Color(0xffE95322),
                        ),
                        Text(
                          widget.tabIndex == 1
                              ? "order delivered"
                              : "order cancelled",
                          style: TextStyle(
                            fontWeight: FontWeight(300),
                            color: Color(0xffE95322),
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (widget.tabIndex != 2) ...[
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFirstButtonselected = true;
                              isSecondButtonselected = false;
                            });
                          },
                          child: CustomeContainer(
                            title: widget.tabIndex == 0
                                ? "cancel order"
                                : "track driver",
                            isSelected: isFirstButtonselected,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isFirstButtonselected = false;
                              isSecondButtonselected = true;
                            });
                          },
                          child: CustomeContainer(
                            title: widget.tabIndex == 0
                                ? "Leave a review"
                                : "Order again",
                            isSelected: isSecondButtonselected,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
