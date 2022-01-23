import 'package:ecommerce_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProPortionateScreenWight(7),
          ),
        ),
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            " Sign Up",
            style: TextStyle(
              fontSize: getProPortionateScreenWight(7),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
