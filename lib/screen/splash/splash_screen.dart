import 'package:ecommerce_ui/screen/splash/components/body.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    //Bạn phải gọi nó trên màn hình bắt đầu của mình
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
