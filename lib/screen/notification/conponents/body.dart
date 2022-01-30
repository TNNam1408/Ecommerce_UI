import 'package:flutter/material.dart';
import 'custom_notification.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CustomNotification(
            textTitle: "Big promotion",
            textTime: "just finished",
            textNotification: "Big promotion with super super voucher for all customers who buy Macbook laptops from January 1, 2022 to January 31, 2022.",
          ),
          CustomNotification(
            textTitle: "Big voucher",
            textTime: "1 minute ago",
            textNotification: "Voucher 50% off for orders from 500k.",
          ),
          CustomNotification(
            textTitle: "Voucher Free ship",
            textTime: "1 hour ago",
            textNotification: "Free shipping voucher for all orders.",
          ),
          CustomNotification(
            textTitle: "Special promotion",
            textTime: "2 hour ago",
            textNotification: "Get 1 free gaming headset when buying a Lenovo legion 5 laptop from January 1, 2022 to January 31, 2022 (Applicable to students).",
          ),
          CustomNotification(
            textTitle: "Macbook Promo",
            textTime: "1 day ago",
            textNotification: "Instant discount of 3 million VND when buying macbook pro and macbook pro M1 from January 1, 2022 to January 31, 2022.",
          ),
          CustomNotification(
            textTitle: "Flat sale 1-1",
            textTime: "2 days ago",
            textNotification: "Flat sale up to 99% for products at the shop during the golden hours from 9am - 12pm - 3pm - 8pm - 10pm on January 1, 2022.",
          ),
        ],
      ),
    );
  }
}

