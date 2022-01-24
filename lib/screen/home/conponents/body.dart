import 'package:ecommerce_ui/screen/home/conponents/popular_products.dart';
import 'package:ecommerce_ui/screen/home/conponents/special_offer.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProPortionateScreenWight(20)),
            const HomeHeader(),
            SizedBox(height: getProPortionateScreenWight(30)),
            const DiscountBanner(),
            SizedBox(height: getProPortionateScreenWight(30)),
            const Categories(),
            SizedBox(height: getProPortionateScreenWight(30)),
            const SpecialOffer(),
            SizedBox(height: getProPortionateScreenWight(30)),
            const PopularProducts(),
            SizedBox(height: getProPortionateScreenWight(30)),
          ],
        ),
      ),
    );
  }
}
