import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, required this.text, required this.image})
      : super(key: key);
  final String? text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "DEVSHOP",
          style: TextStyle(
            fontSize: getProPortionateScreenWight(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text!, textAlign: TextAlign.center,),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProPortionateScreenHeight(265),
          width: getProPortionateScreenWight(235),
        ),
      ],
    );
  }
}
