import 'package:ecommerce_ui/components/custom_button_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'conponents/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile,),
    );
  }
}
