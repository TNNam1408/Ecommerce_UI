import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/routs.dart';
import 'package:ecommerce_ui/screen/splash/splash_screen.dart';
import 'package:ecommerce_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routers,
    );
  }
}
