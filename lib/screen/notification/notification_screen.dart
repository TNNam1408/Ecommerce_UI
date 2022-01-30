import 'package:flutter/material.dart';

import 'conponents/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static String rounteName = "/notification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification",style:TextStyle(color: Colors.black),),
      ),
      body: const Body(),
    );
  }
}
