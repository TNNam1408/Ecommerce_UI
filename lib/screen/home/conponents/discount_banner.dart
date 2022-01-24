import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProPortionateScreenWight(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProPortionateScreenWight(20),
        vertical: getProPortionateScreenWight(15),
      ),
      width: double.infinity,
      // height: 90,
      // decoration: BoxDecoration(
      //   color: const Color(0xFF4A3298),
      //   borderRadius: BorderRadius.circular(20),
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF4A3298).withOpacity(0.8),
            const Color(0xFFFF7643).withOpacity(0.15),
          ],
        ),
      ),
      child: const Text.rich(
        TextSpan(
          text: "A Summer Surpise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "CashBack 20%",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}