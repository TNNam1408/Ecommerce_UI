import 'package:ecommerce_ui/screen/forgot_password/conponents/body.dart';
import 'package:flutter/material.dart';
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: const Body(),
    );
  }
}
