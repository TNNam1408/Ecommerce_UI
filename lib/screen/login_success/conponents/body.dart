import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04,),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.4,//40%
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.04,),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProPortionateScreenWight(15),
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            text: "Back to Home",
            press: (){},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
