import 'package:ecommerce_ui/screen/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

//we use name route
//All our routers with be available here
final Map<String,WidgetBuilder> routers = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};