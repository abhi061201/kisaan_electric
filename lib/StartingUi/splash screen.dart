import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/StartingUi/welcome_screen.dart';

class splashScreen extends StatefulWidget {
  splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 1),(){
      Get.off(welcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splashScreen.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
