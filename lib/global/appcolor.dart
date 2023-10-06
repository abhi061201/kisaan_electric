import 'package:flutter/material.dart';

class appcolor {
  static final Color redColor = Color(0xffc32b30);
  static final Color purpleColor = Color(0xff422b94);
  static final Color mixColor = Color(0xff8e2b59);
  static final Color greyColor = Color(0xffEEEEEE);
  static final Color borderColor = Color(0xff3C2B99);
  static final Color newRedColor = Color(0xffDD2B1C);
  static final LinearGradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,

    // stops: [0.9,0.1],
    colors: [
      Color(0xffc32b30),
      Color(0xff422b94),
    ],
  );
  static final LinearGradient voidGradient = LinearGradient(
    // stops: [0.9,0.1],
    colors: [
      Colors.black,
    ],
  );
}
