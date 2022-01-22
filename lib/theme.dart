import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme(){
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}
AppBarTheme appBarTheme(){
  return const AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Color(0xFF88888888),fontSize: 18,),
  );
}

InputDecorationTheme inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    //floatingLabelBehavior:  FloatingLabelBehavior.always,

    contentPadding: const EdgeInsets.symmetric(horizontal: 42,vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}