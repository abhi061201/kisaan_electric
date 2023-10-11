import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/global/terms&Condition.dart';

class legel_view extends StatefulWidget {
  const legel_view({super.key});

  @override
  State<legel_view> createState() => _legel_viewState();
}

class _legel_viewState extends State<legel_view> {
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
              customAppBar('Legel'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              InkWell(
                onTap: () {
                  Get.to(termsandCondition());
                },
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 5,
                  ),
                  height: Get.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ],
                  ).paddingSymmetric(
                    horizontal: 10,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: Get.width,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 5,
                  ),
                  height: Get.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ],
                  ).paddingSymmetric(
                    horizontal: 10,
                  ),
                ),
              ),
              Container(
                height: 1,
                width: Get.width,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
