import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/History/History_view.dart';
import 'package:kisaan_electric/QR/view/qr_scanner_view.dart';
import 'package:kisaan_electric/auth/reset_password.dart';
import 'package:kisaan_electric/global/aboutUsView.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/global/language.dart';
import 'package:kisaan_electric/global/legel.dart';
import 'package:kisaan_electric/global/referandEarn.dart';
import 'package:kisaan_electric/global/socialMedia.dart';
import 'package:kisaan_electric/products/view/product_view.dart';
import 'package:kisaan_electric/profile/view/profile_view.dart';
import 'package:kisaan_electric/scheme/view/schemes_view.dart';
import 'package:kisaan_electric/wallet/view/wallet_view.dart';

Widget customDrawer() {
  return Drawer(
    backgroundColor: appcolor.greyColor,
    width: Get.width * 0.75,
    child: Container(
      color: Color(0xffEEEEEE),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                children: [
                  Container(
                      child: CircleAvatar(
                    backgroundColor: appcolor.borderColor,
                    radius: 40,
                    child: CircleAvatar(
                      backgroundColor: appcolor.greyColor,
                      child: Icon(
                        Icons.person,
                      ),
                      radius: 39,
                    ),
                  )),
                  Column(
                    children: [
                      Text(
                        'Mohit Kumar',
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 26,
                        ),
                      ),
                      Text(
                        '+91 908487458',
                        style: TextStyle(
                          height: 0.3,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '05 Oct 2023',
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: appcolor.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffB9B9B9),
                        ),
                        child: Center(
                          child: Text(
                            'Uniq Id: 1123',
                            style: TextStyle(
                              height: 0.6,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).paddingOnly(left: 5),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(qr_scanner_view());
              },
              title: 'Scan',
              image: Container(
                child: Image(
                  image: AssetImage('assets/scan 1.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(schemes_view());
              },
              title: 'Scheme',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (3).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(wallet_view());
              },
              title: 'My Wallet',
              image: Container(
                height: Get.height * 0.02,
                child: Image(
                  image: AssetImage('assets/Vector (1).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(profile_view());
              },
              title: 'My Profile',
              image: Container(
                height: Get.height * 0.025,
                child: Image(
                  image: AssetImage('assets/Vector.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(product_view());
              },
              title: 'My Products',
              image: Container(
                height: Get.height * 0.025,
                child: Image(
                  image: AssetImage('assets/secured icon.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Orders',
              image: Container(
                height: Get.height * 0.025,
                child: Image(
                  image: AssetImage('assets/Vector (4).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(historyView());
              },
              title: 'History',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (5).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(socialMedia());
              },
              title: 'Social Media',
              image: Container(
                height: Get.height * 0.02,
                child: Image(
                  image: AssetImage('assets/Vector (2).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(referandearn());
              },
              title: 'Refer & Earn',
              image: Container(
                child: Image(
                  image: AssetImage('assets/share.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Rate Us',
              image: Container(
                child: Image(
                  image: AssetImage('assets/star__.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(aboutUs());
              },
              title: 'About Us',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (7).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Our Catalog',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (8).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Help',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (6).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Feedback & Complaints',
              image: Container(
                child: Image(
                  image: AssetImage('assets/support.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(legel_view());
              },
              title: 'Legal',
              image: GradientText(
                gradient: appcolor.gradient,
                widget: Container(
                  child: Image(
                    image: AssetImage('assets/external-link-alt.png'),
                  ),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(language());
              },
              title: 'Language',
              image: Container(
                child: Image(
                  image: AssetImage('assets/Vector (9).png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {
                Get.back();
                Get.to(reset_password());
              },
              title: 'Change Password',
              image: Container(
                child: Image(
                  image: AssetImage('assets/change.png'),
                ),
              ),
            ),
            drawerWidget(
              callback: () {},
              title: 'Logout',
              image: GradientText(
                gradient: appcolor.gradient,
                widget: Image(
                  image: AssetImage('assets/Vector (10).png'),
                ),
              ),
            ),
            Text(
              '    App Version 1.0.0',
              style: TextStyle(
                fontSize: 24,
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

Widget drawerWidget({
  Icon? icon,
  Widget? image,
  String? title,
  Function()? callback,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      padding: EdgeInsets.only(left: 5, bottom: 2),
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: Get.height * 0.05,
            child: icon == null
                ? CircleAvatar(
                    radius: 17,
                    backgroundColor: appcolor.borderColor,
                    child: CircleAvatar(
                        radius: 16,
                        backgroundColor: appcolor.greyColor,
                        child: image))
                : CircleAvatar(
                    child: icon,
                  ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 22,
            ),
          )
        ],
      ),
    ),
  );
}
