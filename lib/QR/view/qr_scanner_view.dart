import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/custom_drawer.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class qr_scanner_view extends StatefulWidget {
  const qr_scanner_view({super.key});

  @override
  State<qr_scanner_view> createState() => _qr_scanner_viewState();
}

class _qr_scanner_viewState extends State<qr_scanner_view> {
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
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              width: Get.width * 0.3,
              child: Image(
                image: AssetImage(
                  'assets/plain logo 1.png',
                ),
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: GradientText(
                  gradient: appcolor.gradient,
                  widget: Icon(
                    Icons.call,
                  ),
                ),
              ),
              GradientText(
                  gradient: appcolor.gradient,
                  widget: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                    ),
                  )),
            ],
            leading: GradientText(
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
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Scan Your Code',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Get.to(scanQR());
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: appcolor.borderColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: appcolor.greyColor,
                    ),
                    child: Image(
                        image: AssetImage(
                            'assets/QR_code_for_mobile_English_Wikipedia 1.png')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hold your phone aprox 10cm\naway from the code steady for 2 second',
                  style: TextStyle(
                    fontSize: 20,
                    height: 0.9,
                  ),
                  textAlign: TextAlign.center,
                ),
                customtextformfield(hinttext: 'Enter your Coupon code'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    blockButton(
                      callback: () {},
                      width: Get.width * 0.3,
                      verticalPadding: 5,
                      widget: Text(
                        'Scan Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    blockButton(
                      callback: () {},
                      width: Get.width * 0.3,
                      verticalPadding: 5,
                      widget: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '*Click below to view scanned code history  ',
                  style: TextStyle(
                    color: appcolor.redColor,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View History',
                      style: TextStyle(
                        fontSize: 18,
                        color: appcolor.redColor,
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ).paddingSymmetric(horizontal: 15, vertical: 15),
          ),
        ),
      ),
    );
  }
}
