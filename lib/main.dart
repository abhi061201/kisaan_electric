

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/History/History_view.dart';
import 'package:kisaan_electric/StartingUi/splash%20screen.dart';
import 'package:kisaan_electric/StartingUi/welcome_screen.dart';
import 'package:kisaan_electric/auth/login/view/login_view.dart';
import 'package:kisaan_electric/auth/register/view/register.dart';
import 'package:kisaan_electric/auth/reset_password.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/language.dart';
import 'package:kisaan_electric/global/legel.dart';
import 'package:kisaan_electric/global/referandEarn.dart';
import 'package:kisaan_electric/global/terms&Condition.dart';
import 'package:kisaan_electric/home/view/home_view.dart';
import 'package:kisaan_electric/products/view/detailed_product_view.dart';
import 'package:kisaan_electric/profile/view/profile_view.dart';
import 'package:kisaan_electric/ranking/ranking.dart';

void main() {
  runApp( Kisaan_Electric());
}

class Kisaan_Electric extends StatelessWidget {
  const Kisaan_Electric({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: appcolor.mixColor,
        fontFamily: 'TenaliRamakrishna',
        
        textTheme: TextTheme(
          
        )
      ),
      home: splashScreen(),
    );
  }
}