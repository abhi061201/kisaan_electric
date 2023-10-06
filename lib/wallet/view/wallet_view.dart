import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';

import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/wallet/view/redemption_view.dart';
import 'package:kisaan_electric/wallet/view/tds_certificate_view.dart';

class wallet_view extends StatefulWidget {
  const wallet_view({super.key});

  @override
  State<wallet_view> createState() => _wallet_viewState();
}

class _wallet_viewState extends State<wallet_view> {
  var value = null;
  RxBool showContainer = false.obs;
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                customAppBar('My Wallet'),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: Get.height * 0.04,
                  width: Get.width,
                  color: appcolor.newRedColor,
                  child: Center(
                    child: Text(
                      'Approval pending with Kisaan Electric ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Mohit Kumar',
                  style: TextStyle(fontSize: 23, height: 0.8),
                ),
                Text(
                  'Registered On : 05 Oct 2023',
                  style: TextStyle(
                    height: 0.8,
                    fontSize: 23,
                  ),
                ),
                GradientText(
                  gradient: appcolor.gradient,
                  widget: Text(
                    'Balance Point : 20',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 24,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'Pan Status',
                            style: TextStyle(
                              height: 0.8,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Spacer(),
                        blockButton(
                            borderradius: 15,
                            verticalPadding: 0,
                            width: Get.width * 0.35,
                            widget: Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ))
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'Bank Status',
                            style: TextStyle(
                              height: 0.8,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Spacer(),
                        blockButton(
                            borderradius: 15,
                            verticalPadding: 0,
                            width: Get.width * 0.35,
                            widget: Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ))
                      ],
                    ).paddingOnly(
                      bottom: 15,
                    ),
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'Aadhar Status',
                            style: TextStyle(
                              height: 0.8,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Spacer(),
                        blockButton(
                            borderradius: 15,
                            verticalPadding: 0,
                            width: Get.width * 0.35,
                            widget: Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ))
                      ],
                    ).paddingOnly(
                      bottom: 15,
                    ),
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'GST Status',
                            style: TextStyle(
                              height: 0.8,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Spacer(),
                        blockButton(
                            borderradius: 15,
                            verticalPadding: 0,
                            width: Get.width * 0.35,
                            widget: Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ))
                      ],
                    ).paddingOnly(
                      bottom: 15,
                    ),
                    // Row(
                    //   children: [
                    //     GradientText(
                    //       gradient: appcolor.gradient,
                    //       widget: Text(
                    //         'Reedemable Points',
                    //         style: TextStyle(
                    //           height: 0.8,
                    //           fontSize: 24,
                    //         ),
                    //       ),
                    //     ),
                    //     Spacer(),
                    //     Text(
                    //       '0        ',
                    //       style: TextStyle(
                    //         height: 0.8,
                    //         fontSize: 30,
                    //       ),
                    //     ),
                    //   ],
                    // ).paddingOnly(
                    //   bottom: 15,
                    // ),
                    // Row(
                    //   children: [
                    //     GradientText(
                    //       gradient: appcolor.gradient,
                    //       widget: Text(
                    //         'Reedemable Cash',
                    //         style: TextStyle(
                    //           height: 0.8,
                    //           fontSize: 24,
                    //         ),
                    //       ),
                    //     ),
                    //     Spacer(),
                    //     Text(
                    //       '0        ',
                    //       style: TextStyle(
                    //         height: 0.8,
                    //         fontSize: 30,
                    //       ),
                    //     ),
                    //   ],
                    // ).paddingOnly(
                    //   bottom: 15,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        blockButton(
                          // borderradius: 15,
                          callback: () {
                            Get.to(tds_certificate_view());
                          },
                          verticalPadding: 0,
                          width: Get.width * 0.42,
                          widget: Text(
                            'TDS Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        blockButton(
                          callback: () {
                            Get.to(redemption_view());
                          },
                          // borderradius: 15,
                          verticalPadding: 0,
                          width: Get.width * 0.42,
                          widget: Text(
                            'Redemptions',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DottedBorder(
                          borderType: BorderType.RRect,
                          color: appcolor.newRedColor,
                          radius: Radius.circular(10),
                          child: Container(
                            width: Get.width * 0.42,
                            decoration: BoxDecoration(
                              color: appcolor.greyColor,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Cash',
                                style: TextStyle(fontSize: 24, height: 1.5),
                              ),
                            ),
                          ),
                        ),
                        DottedBorder(
                          borderType: BorderType.RRect,
                          color: appcolor.newRedColor,
                          radius: Radius.circular(10),
                          child: Container(
                            width: Get.width * 0.42,
                            decoration: BoxDecoration(
                              color: appcolor.greyColor,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Scheme',
                                style: TextStyle(fontSize: 24, height: 1.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 15,
                    ),
                    Obx(
                      () => Container(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: Get.height * 0.07,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: showContainer.value == false
                                      ? Colors.black
                                      : appcolor.newRedColor,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Select Method',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      height: 2.5,
                                    ),
                                  ),
                                  value: value,
                                  onChanged: (value) {
                                    showContainer.value = !showContainer.value;
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        'Bank',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                        child: Text(
                                          'Paytm',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        value: 2),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: appcolor.greyColor,
                              ),
                              child: Text(
                                'Select Reedem Method',
                                style: TextStyle(
                                  height: 0.5,
                                  fontSize: 20,
                                  color: showContainer.value == false
                                      ? Colors.black
                                      : appcolor.newRedColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    //show container
                    Obx(
                      () => showContainer.value == true
                          ? Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(top: 4),
                                  height: Get.height * 0.06,
                                  width: Get.width * 0.5,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: appcolor.newRedColor,
                                      )),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    cursorColor: Colors.black,
                                    cursorHeight: 0,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                    ),
                                    decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        border: InputBorder.none,
                                        hintText: 'Enter Points',
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 6),
                                        hintStyle: TextStyle(
                                          fontSize: 24,
                                          height: 2.5,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Daily Limit for Electrician : Rs. 1000',
                                  style: TextStyle(
                                    fontSize: 24,
                                    height: 0.8,
                                  ),
                                ),
                                Text(
                                  'Amount Redeemed today : Rs. 0',
                                  style: TextStyle(fontSize: 24, height: 1.2),
                                ),
                                Text(
                                  'Daily Limit for Dealers : Rs. 250',
                                  style: TextStyle(
                                    fontSize: 24,
                                    height: 0.8,
                                  ),
                                ),
                                blockButton(
                                  borderradius: 10,
                                  verticalPadding: 3,
                                  width: Get.width * 0.4,
                                  widget: Text(
                                    'Reedem',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ).paddingOnly(
                              top: 20,
                            )
                          : Container(),
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
