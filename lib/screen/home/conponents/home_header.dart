import 'package:ecommerce_ui/screen/cart/cart_screen.dart';
import 'package:ecommerce_ui/screen/home/conponents/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProPortionateScreenWight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            press: ()=> Navigator.pushNamed(context, CartScreen.routeName),
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 6,
          ),
          IconBtnWithCounter(
            press: (){},
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 8,
          ),
        ],
      ),
    );
  }
}