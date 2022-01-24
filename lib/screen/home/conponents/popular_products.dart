import 'package:ecommerce_ui/components/product_card.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/screen/home/conponents/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: getProPortionateScreenWight(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}