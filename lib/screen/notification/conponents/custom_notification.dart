import 'package:flutter/material.dart';

import '../../../size_config.dart';
class CustomNotification extends StatelessWidget {
  const CustomNotification({Key? key, required this.textTitle, required this.textTime, required this.textNotification,}) : super(key: key);
  final String textTitle, textTime,textNotification;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProPortionateScreenWight(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getProPortionateScreenWight(20),
          vertical: getProPortionateScreenWight(15),
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF4A3298).withOpacity(0.8),
              const Color(0xFFFF7643).withOpacity(0.8),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textTitle,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  textTime,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            Text(
              textNotification,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}