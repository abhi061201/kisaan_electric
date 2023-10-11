import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class socialMedia extends StatefulWidget {
  const socialMedia({super.key});

  @override
  State<socialMedia> createState() => _socialMediaState();
}

class _socialMediaState extends State<socialMedia> {
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
              customAppBar('Social Media'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Container(
                child: Text(
                  'You can Follow Us On',
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationColor: appcolor.newRedColor,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(
                        'assets/fb.png',
                      ),
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(
                        'assets/insta.png',
                      ),
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(
                        'assets/youtube.png',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Visit Our Website ',
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationColor: appcolor.newRedColor,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'www.haridayaindustries.com ',
                style: TextStyle(
                  fontSize: 22,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
