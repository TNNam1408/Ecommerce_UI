import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen/home/conponents/search_field.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            const Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
