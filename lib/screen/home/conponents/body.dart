import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screen/home/conponents/search_field.dart';
import 'package:ecommerce_ui/screen/home/conponents/section_title.dart';
import 'package:ecommerce_ui/screen/home/conponents/special_offer.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_btn_with_counter.dart';

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
            SectionTitle(
              text: "Popular Product",
              press: () {},
            ),
            Column(
              children: [
                SizedBox(
                  width: getProPortionateScreenWight(140),
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kSecondDaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(demoProducts[0].images[0]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
