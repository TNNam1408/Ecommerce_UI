import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/components/no_account_text.dart';
import 'package:ecommerce_ui/components/socal_card.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/sign_in/conponents/sign_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProPortionateScreenWight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.04,
                ),
                Text(
                  "Login Account",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProPortionateScreenWight(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password\nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                const SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                        icon: "assets/icons/facebook-2.svg", press: () {}),
                    SocalCard(
                        icon: "assets/icons/google-icon.svg", press: () {}),
                    SocalCard(icon: "assets/icons/twitter.svg", press: () {}),
                  ],
                ),
                SizedBox(
                  height: getProPortionateScreenHeight(20),
                ),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}