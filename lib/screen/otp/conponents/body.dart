import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen/login_success/login_success_screen.dart';
import 'package:ecommerce_ui/screen/otp/otp_screen.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text("OTP Verification", style: headingStyle,),
              const Text("We sent your code to +84 396 106 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                  Navigator.pushNamed(context, OtpScreen.routeName);
                },
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Row buildTimer(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("This code will sexpired in "),
      TweenAnimationBuilder(
        tween: Tween(begin: 30.0, end: 0.0),
        duration: const Duration(seconds: 30),
        builder: (_, dynamic value, child) => Text(
          "00:${value.toInt()}",
          style: const TextStyle(color: kPrimaryColor),
        ),
        onEnd: (){},
      ),
    ],
  );
}

