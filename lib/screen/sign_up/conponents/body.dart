import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/components/socal_card.dart';
import 'package:ecommerce_ui/screen/sign_up/conponents/sign_up_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProPortionateScreenWight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02,),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07,),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.07,),
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
              SizedBox(height: getProPortionateScreenHeight(20),),
              const Text(
                "By continue your confirm that you agree\nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}