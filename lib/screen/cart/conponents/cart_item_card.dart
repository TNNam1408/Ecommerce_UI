import 'package:ecommerce_ui/components/rounded_icon_btn.dart';
import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProPortionateScreenWight(10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    text: "\$${cart.product.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: kPrimaryColor),
                    children: [
                      TextSpan(
                          text: " x${cart.numOfItem}",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                ),
                SizedBox(width: getProPortionateScreenWight(50)),
                RoundedIconBtn2(
                  iconData: Icons.remove,
                  press: () {},
                ),
                SizedBox(width: getProPortionateScreenWight(10)),
                const Text(
                  "1",
                  style: TextStyle(fontSize: 18, color: kPrimaryColor),
                ),
                SizedBox(width: getProPortionateScreenWight(10)),
                RoundedIconBtn2(
                  iconData: Icons.add,
                  press: () {},
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
// RoundedIconBtn(
// iconData: Icons.remove,
// press: () {},
// ),
// SizedBox(width: getProPortionateScreenWight(10)),
// const Text("1", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
// SizedBox(width: getProPortionateScreenWight(10)),
// RoundedIconBtn(
// iconData: Icons.add,
// press: () {},
// ),
