import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/global/terms&Condition.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({super.key});

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customAppBar('About Us'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Text(
                'About Kissan',
                style: TextStyle(
                  color: appcolor.newRedColor,
                  fontSize: 26,
                ),
              ),
              Text(
                'Please note as, per CBDTwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries\nPlease note as, per CBDTwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,  ',
                style: TextStyle(
                  fontSize: 22,
                  height: 1,
                ),
              ),
              Text(
                'End User Liscence Agreement',
                style: TextStyle(
                  color: appcolor.newRedColor,
                  fontSize: 26,
                ),
              ),
              Text(
                'To View the update terms & conditions please click on the link',
                style: TextStyle(
                  fontSize: 22,
                  height: 1,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(termsandCondition());
                },
                child: Text(
                  'Click Here',
                  style: TextStyle(
                    fontSize: 22,
                    height: 1,
                  ),
                ),
              )
            ],
          ).paddingSymmetric(
            horizontal: 10,
          ),
        ),
      ),
    );
  }
}
