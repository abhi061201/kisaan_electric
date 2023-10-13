import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

import '../products/controller/product_controller.dart';

class historyView extends StatefulWidget {
  const historyView({super.key});

  @override
  State<historyView> createState() => _historyViewState();
}

class _historyViewState extends State<historyView> {
  productController controller = Get.put(productController());
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
              customAppBar('History'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Container(
                decoration: BoxDecoration(),
                height: Get.height * 0.08,
                child: TabBar(
                  dividerColor: appcolor.newRedColor,
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  indicatorColor: appcolor.redColor,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  controller: controller.tabcontroller,
                  tabs: [
                    Container(
                      child: Text(
                        'Point'.tr,
                      ),
                    ),
                    Container(
                      child: Text('Transition'.tr),
                    ),
                    Text('Order'.tr),
                  ],
                ),
              ),
              Expanded(
                child:
                    TabBarView(controller: controller.tabcontroller, children: [
                  points(),
                  Transition(),
                  Order(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget points() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: appcolor.newRedColor,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              width: Get.width * 0.6,
              height: Get.height * 0.05,
              child: customtextformfield(
                enabled: false,
                border: InputBorder.none,
                bottomLineColor: Colors.transparent,
                hinttext: 'Code Search',
                suffixIcon: Icon(
                  Icons.search,
                ),
                newIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
            Text(
              'Total Points 100',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Filter :',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date From: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date To: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            blockButton(
              verticalPadding: 3,
              width: Get.width * 0.2,
              widget: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height * 0.65,
          width: Get.width,
          child: Image(
            image: AssetImage('assets/Table.png'),
            fit: BoxFit.fill,
          ),
        ),
      ],
    ).paddingSymmetric(
      horizontal: 10,
    );
  }

  Widget Transition() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: appcolor.newRedColor,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              width: Get.width * 0.6,
              height: Get.height * 0.05,
              child: customtextformfield(
                enabled: false,
                border: InputBorder.none,
                bottomLineColor: Colors.transparent,
                hinttext: 'Transition Search',
                suffixIcon: Icon(
                  Icons.search,
                ),
                newIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
            Text(
              'Total Points 100',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Filter :',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date From: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date To: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            blockButton(
              verticalPadding: 3,
              width: Get.width * 0.2,
              widget: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height * 0.65,
          width: Get.width,
          child: Image(
            image: AssetImage('assets/Table.png'),
            fit: BoxFit.fill,
          ),
        ),
      ],
    ).paddingSymmetric(
      horizontal: 10,
    );
  }

  Widget Order() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: appcolor.newRedColor,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              width: Get.width * 0.6,
              height: Get.height * 0.05,
              child: customtextformfield(
                enabled: false,
                border: InputBorder.none,
                bottomLineColor: Colors.transparent,
                hinttext: 'Product Search',
                suffixIcon: Icon(
                  Icons.search,
                ),
                newIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
            Text(
              'Total Points 100',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Filter :',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date From: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolor.newRedColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: Get.width * 0.26,
                height: Get.height * 0.04,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date To: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: appcolor.mixColor,
                          height: 1,
                        ),
                      ),
                      GradientText(
                        gradient: appcolor.gradient,
                        widget: Icon(
                          Icons.calendar_month,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                )),
            blockButton(
              verticalPadding: 3,
              width: Get.width * 0.2,
              widget: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: Get.height * 0.65,
          width: Get.width,
          child: Image(
            image: AssetImage('assets/Table.png'),
            fit: BoxFit.fill,
          ),
        ),
      ],
    ).paddingSymmetric(
      horizontal: 10,
    );
  }
}
