import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/rounded_icon_btn.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screen/details/conponents/product_description.dart';
import 'package:ecommerce_ui/screen/details/conponents/product_image.dart';
import 'package:ecommerce_ui/screen/details/conponents/top_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ProductImages(
              product: product,
            ),
            Column(
              children: [
                TopRoundedContainer(
                  color: Colors.white,
                  child: ProductDescription(
                    product: product,
                    pressonSeeMore: () {},
                  ),
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(
                        product: product,
                      ),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            bottom: getProPortionateScreenWight(40),
                            top: getProPortionateScreenWight(15),
                          ),
                          child: DefaultButton(
                            text: "Add To Cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
