import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({Key? key, required this.iconData, required this.press})
      : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProPortionateScreenWight(40),
      width: getProPortionateScreenWight(40),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          primary: kPrimaryColor,
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}

class RoundedIconBtn2 extends StatelessWidget {
  const RoundedIconBtn2({Key? key, required this.iconData, required this.press})
      : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProPortionateScreenWight(30),
      width: getProPortionateScreenWight(30),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          primary: kPrimaryColor,
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}