import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/wallet/controller/wallte_controller.dart';

class redemption_view extends StatefulWidget {
  const redemption_view({super.key});

  @override
  State<redemption_view> createState() => _redemption_viewState();
}

class _redemption_viewState extends State<redemption_view> {
  wallet_controller controller = Get.put(wallet_controller());

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
              customAppBar('Redemption History'),
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
                  isScrollable: true,
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
                        'All'.tr,
                      ),
                    ),
                    Container(
                      child: Text('Pending'.tr),
                    ),
                    Text('Success'.tr),
                    Text('Failed'.tr),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: controller.tabcontroller,
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      'There are no transaction available',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      'There are no transaction available',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      'There are no transaction available',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      'There are no transaction available',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
