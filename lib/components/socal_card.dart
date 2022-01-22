import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({Key? key, required this.icon, required this.press}) : super(key: key);

  final String icon;
  final dynamic press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProPortionateScreenWight(1)),
        padding: EdgeInsets.all(getProPortionateScreenWight(5)),
        height: getProPortionateScreenHeight(40),
        width: getProPortionateScreenWight(22),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
