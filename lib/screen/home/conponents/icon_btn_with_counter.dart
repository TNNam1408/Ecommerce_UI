import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({Key? key, required this.svgSrc,this.numOfItems = 0, required this.press}) : super(key: key);
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding:
            EdgeInsets.all(getProPortionateScreenWight(12)),
            height: getProPortionateScreenWight(46),
            width: getProPortionateScreenWight(46),
            decoration: BoxDecoration(
              color: kSecondDaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProPortionateScreenWight(16),
                width: getProPortionateScreenWight(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                      fontSize: getProPortionateScreenWight(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}