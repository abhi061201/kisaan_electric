import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  String groupValue = '1';
  var value = '1';

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
              customAppBar('Language'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Select Language',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '1',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'English',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '2',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Hindi',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '3',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Punjabi',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '4',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Gujrati',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '5',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Marathi',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '6',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Odia',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.mixColor,
                          ),
                          value: '7',
                          groupValue: groupValue,
                          onChanged: (val) {
                            groupValue = val.toString();
                            setState(() {});
                          }),
                      Text(
                        'Nepali',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
