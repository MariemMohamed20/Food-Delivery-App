import 'package:flutter/material.dart';
import 'package:food_delivery/core/custom_divider.dart';
import 'package:food_delivery/core/screens_layout.dart';
import 'package:food_delivery/screens/orders_screen/widget/custom_order_item.dart';
import 'package:food_delivery/screens/orders_screen/widget/custome_container.dart';
import 'package:food_delivery/screens/orders_screen/widget/order_card_widget.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  int selectedButtonIndex = -1;
  List<OrderItem> getcurrentList() {
    if (selectedButtonIndex == 0) {
      return OrderItem.activeOrder;
    } else if (selectedButtonIndex == 1) {
      return OrderItem.completedOrder;
    } else {
      return OrderItem.cancelledOrder;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreensLayout(
      topcontent: Center(
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios, color: Color(0xffE95322)),
            Expanded(
              child: Text(
                'My Orders',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF8F8F8),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomcontent: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButtonIndex = 0;
                  });
                },
                child: CustomeContainer(
                  title: "Active",
                  isSelected: selectedButtonIndex == 0,
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButtonIndex = 1;
                  });
                },
                child: CustomeContainer(
                  title: "Completed",
                  isSelected: selectedButtonIndex == 1,
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButtonIndex = 2;
                  });
                },
                child: CustomeContainer(
                  title: "cancelled",
                  isSelected: selectedButtonIndex == 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 19),
          CustomDivider(),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemBuilder: (context, index) {
                final currentItem = getcurrentList()[index];
                return OrderCardWidget(
                  item: currentItem,
                  tabIndex: selectedButtonIndex,
                );
              },
              separatorBuilder: (context, index) {
                return CustomDivider();
              },
              itemCount: getcurrentList().length,
            ),
          ),
        ],
      ),
    );
  }
}
