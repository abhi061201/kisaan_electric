import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class schemes_view extends StatefulWidget {
  const schemes_view({super.key});

  @override
  State<schemes_view> createState() => _schemes_viewState();
}

class _schemes_viewState extends State<schemes_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/rectangle.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              customAppBar('Schemes'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Coming Soon',
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
