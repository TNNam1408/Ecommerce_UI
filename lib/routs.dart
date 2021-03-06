import 'package:ecommerce_ui/screen/cart/cart_screen.dart';
import 'package:ecommerce_ui/screen/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_ui/screen/details/details_screen.dart';
import 'package:ecommerce_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/home/home_screen.dart';
import 'package:ecommerce_ui/screen/login_success/login_success_screen.dart';
import 'package:ecommerce_ui/screen/notification/notification_screen.dart';
import 'package:ecommerce_ui/screen/otp/otp_screen.dart';
import 'package:ecommerce_ui/screen/profile/profile_screen.dart';
import 'package:ecommerce_ui/screen/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screen/sign_up/sign_up_screen.dart';
import 'package:ecommerce_ui/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

//we use name route
//All our routers with be available here
final Map<String,WidgetBuilder> routers = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context)=> const LoginSuccessScreen(),
  SignUpScreen.routeName: (context)=> const SignUpScreen(),
  CompleteProfileScreen.routeName: (context)=>const CompleteProfileScreen(),
  OtpScreen.routeName: (context)=> const OtpScreen(),
  Home.routeName: (context)=> const Home(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName:(context) => const ProfileScreen(),
  NotificationScreen.rounteName: (context) => const NotificationScreen(),
};