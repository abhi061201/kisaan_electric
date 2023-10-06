import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

Container customAppBar(String title) {
  return Container(
    padding: EdgeInsets.only(
      left: 10,
    ),
    color: Colors.transparent,
    child: Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GradientText(
          gradient: appcolor.gradient,
          widget: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GradientText(
          widget: Text(
            title,
            style: TextStyle(
              height: 2,
              fontSize: 30,
            ),
          ),
          gradient: appcolor.gradient,
        ),
      ],
      
    ),
  );
}
