import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/auth/forgetPassword_view.dart';
import 'package:kisaan_electric/auth/login/controller/login_controller.dart';
import 'package:kisaan_electric/auth/register/view/register.dart';
import 'package:kisaan_electric/auth/reset_password.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/custom_drawer.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/QR/view/qr_scanner_view.dart';
import 'package:kisaan_electric/global/socialMedia.dart';
import 'package:kisaan_electric/products/view/product_view.dart';
import 'package:kisaan_electric/profile/view/profile_view.dart';
import 'package:kisaan_electric/wallet/view/wallet_view.dart';

class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  login_controller controller = Get.put(login_controller());
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
          drawer: customDrawer(),
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
            leading: Builder(
              builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Icon(
                      Icons.sort,
                    ),
                  ),
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Mohit',
                      style: TextStyle(
                        fontSize: 22,
                        color: appcolor.purpleColor,
                      ),
                    ),
                    Text(
                      'Approval Status: No',
                      style: TextStyle(
                        fontSize: 22,
                        color: appcolor.purpleColor,
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 18),
                Container(
                  width: Get.width,
                  child: Image(
                    image: AssetImage(
                      'assets/image 1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: Get.width * 0.4,
                          height: Get.height * 0.11,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(color: Color(0xff3C2B99)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GradientText(
                                gradient: appcolor.gradient,
                                widget: Text(
                                  'Your Points',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              GradientText(
                                gradient: appcolor.gradient,
                                widget: Text(
                                  '0 Pts.',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width * 0.4,
                          height: Get.height * 0.11,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(color: Color(0xff3C2B99)),
                          ),
                          child: Column(
                            children: [
                              GradientText(
                                gradient: appcolor.gradient,
                                widget: Text(
                                  'Total Redemptions',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text('(Financial Year)'),
                              GradientText(
                                gradient: appcolor.gradient,
                                widget: Text(
                                  'Rs.0',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 25,
                      runSpacing: 0,
                      children: [
                        customwidget(
                          assetimagepath: 'assets/scan 1.png',
                          callback: () {
                            Get.to(qr_scanner_view());
                          },
                          title: 'Scan',
                        ),
                        customwidget(
                          assetimagepath: 'assets/offers 1.png',
                          callback: () {},
                          title: 'Offers',
                        ),
                        customwidget(
                          assetimagepath: 'assets/Vector.png',
                          callback: () {
                            Get.to(profile_view());
                          },
                          title: 'My Profile',
                        ),
                        customwidget(
                          assetimagepath: 'assets/Vector (1).png',
                          callback: () {
                            Get.to(wallet_view());
                          },
                          title: 'My Wallet',
                        ),
                        customwidget(
                          assetimagepath: 'assets/secured icon.png',
                          callback: () {
                            Get.to(product_view());
                          },
                          title: 'My Products',
                        ),
                        customwidget(
                          assetimagepath: 'assets/Vector (2).png',
                          callback: () {
                            Get.to(socialMedia());
                          },
                          title: 'Social Media',
                        ),
                      ],
                    ),
                    GradientText(
                      gradient: appcolor.gradient,
                      widget: Text(
                        'My Products',
                        style: TextStyle(
                          fontSize: 26,
                          height: 1,
                        ),
                      ),
                    ).paddingSymmetric(
                      vertical: 6,
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        Container(
                          width: Get.width * 0.28,
                          height: Get.height * 0.11,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(color: Color(0xff3C2B99)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: Get.height * 0.06,
                                child: Image(
                                    image: AssetImage('assets/image 2.png')),
                              ),
                              Text(
                                'MODULAR BOX',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width * 0.28,
                          height: Get.height * 0.11,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(color: Color(0xff3C2B99)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: Get.height * 0.06,
                                child: Image(
                                    image: AssetImage('assets/image1 1.png')),
                              ),
                              Text(
                                'CONCEALED BOX',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width * 0.28,
                          height: Get.height * 0.11,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(color: Color(0xff3C2B99)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: Get.height * 0.06,
                                child: Image(
                                    image: AssetImage('assets/image 4.png')),
                              ),
                              Text(
                                'FAN BOXS',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    blockButton(
                        width: Get.width * 0.4,
                        verticalPadding: 0,
                        widget: Text(
                          'See More',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )).paddingOnly(
                      bottom: 20,
                    )
                  ],
                ).paddingSymmetric(
                  horizontal: 18,
                  vertical:6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customwidget({
  Function()? callback,
  String? assetimagepath,
  String? title,
}) {
  return InkWell(
    onTap: callback,
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: appcolor.borderColor,
          radius: 40,
          child: CircleAvatar(
            radius: 39,
            backgroundColor: appcolor.greyColor,
            child: Container(
              child: Image(
                image: AssetImage(assetimagepath.toString()),
              ),
            ),
          ),
        ),
        GradientText(
          widget: Text(
            '$title',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          gradient: appcolor.gradient,
        ),
      ],
    ),
  );
}
