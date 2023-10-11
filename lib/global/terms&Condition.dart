import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class termsandCondition extends StatefulWidget {
  const termsandCondition({super.key});

  @override
  State<termsandCondition> createState() => _termsandConditionState();
}

class _termsandConditionState extends State<termsandCondition> {
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
              customAppBar('Terms & Conditions'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. PayTm : Any Amount equal or above Rs. 1',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Disclaimer',
                    style: TextStyle(
                      color: appcolor.newRedColor,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'End User Liscence Agreement',
                    style: TextStyle(
                      color: appcolor.newRedColor,
                      fontSize: 24,
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
            ],
          ),
        ),
      ),
    );
  }
}
