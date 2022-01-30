import 'package:ecommerce_ui/components/custom_button_nav_bar.dart';
import 'package:ecommerce_ui/screen/home/conponents/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),

    );
  }
}
