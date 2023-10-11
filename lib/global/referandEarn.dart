import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/global/legel.dart';

class referandearn extends StatefulWidget {
  const referandearn({super.key});

  @override
  State<referandearn> createState() => _referandearnState();
}

class _referandearnState extends State<referandearn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/rectangle.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              customAppBar('Refer & Earn'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GradientText(
                            gradient: appcolor.gradient,
                            widget: Text(
                              'Mohit Kumar ',
                              style: TextStyle(fontSize: 26, height: 1),
                            ),
                          ),
                          Text(
                            '+91-987653429',
                            style: TextStyle(
                              fontSize: 22,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View Details',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Refer & Earn',
                      style: TextStyle(fontSize: 26, height: 1),
                    ),
                  ),
                  Text(
                    'Upto Rs. 200 for each referral',
                    style: TextStyle(
                      fontSize: 22,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: appcolor.newRedColor,
                    radius: Radius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: appcolor.greyColor,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ELECTRICKISSANNEW1',
                            style: TextStyle(
                              fontSize: 22,
                              height: 1,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(
                              right: 5,
                            ),
                            width: 1,
                            color: Colors.black,
                            height: Get.height * 0.025,
                          ),
                          Container(
                            height: Get.height * 0.022,
                            child: Image(
                                image: AssetImage(
                              'assets/Vector (1).png',
                            )),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              ' Copy',
                              style: TextStyle(
                                fontSize: 20,
                                height: 1,
                                color: Colors.blue[300],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: appcolor.newRedColor,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height * 0.022,
                              child: Text(
                                'Share On',
                                style: TextStyle(
                                  fontSize: 22,
                                  height: 1.2,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child:
                                  Image(image: AssetImage('assets/whatsa.png')),
                            ),
                          ],
                        ),
                      ),
                      blockButton(
                        verticalPadding: 5,
                        width: Get.width * 0.35,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height * 0.022,
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  height: 1.2,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Image(
                                  image: AssetImage('assets/share_white.png')),
                            ),
                          ],
                        ),
                      )
                    ],
                  ).paddingSymmetric(
                    vertical: 10,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GradientText(
                            gradient: appcolor.gradient,
                            widget: Text(
                              'Contact Us',
                              style: TextStyle(fontSize: 26, height: 1),
                            ),
                          ),
                          Text(
                            'For any queries or help',
                            style: TextStyle(
                              fontSize: 22,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      blockButton(
                        width: Get.width * 0.3,
                        verticalPadding: 5,
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height * 0.022,
                              child: Text(
                                'Call Us',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Mail us at ',
                        style: TextStyle(fontSize: 22, height: 1),
                      ),
                      Text(
                        'info@kissanelectric.com',
                        style: TextStyle(
                            fontSize: 22, height: 1, color: Colors.blue[400]),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(legel_view());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: appcolor.newRedColor,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: Get.height * 0.022,
                            child: Text(
                              'Legal',
                              style: TextStyle(
                                fontSize: 22,
                                height: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 5,
                            ),
                            child:
                                Image(image: AssetImage('assets/iosforward.png')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 15),
            ],
          ),
        ),
      ),
    );
  }
}
