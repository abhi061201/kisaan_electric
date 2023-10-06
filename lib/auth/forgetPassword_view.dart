import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/auth/login/controller/login_controller.dart';
import 'package:kisaan_electric/auth/login/view/login_view.dart';
import 'package:kisaan_electric/auth/register/controller/register_controller.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class forgotPassword_view extends StatefulWidget {
  const forgotPassword_view({super.key});

  @override
  State<forgotPassword_view> createState() => _forgotPassword_viewState();
}

class _forgotPassword_viewState extends State<forgotPassword_view> {
  registerController controller = Get.put(registerController());
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
                SizedBox(
                  height: Get.height * 0.08,
                ),
                Container(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                customtextformfield(
                  hinttext: 'Mobile Number',
                  suffixIcon: Icon(Icons.call),
                  newIcon: Icon(Icons.call),
                  key_type: TextInputType.phone,
                  maxLength: 10,
                ),
                customtextformfield(
                  hinttext: 'Enter OTP*',
                  suffixIcon: Container(
                    child: Image(
                        image: AssetImage(
                      'assets/otp 1.png',
                    )),
                  ),
                  newIcon: Container(
                    child: Image(
                        image: AssetImage(
                      'assets/otp 1.png',
                    )),
                  ),
                  key_type: TextInputType.phone,
                  maxLength: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: GradientText(
                        gradient: appcolor.gradient,
                        widget: Text(
                          'Send Otp?',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: GradientText(
                        gradient: appcolor.gradient,
                        widget: Text(
                          'Resend Otp?',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 10),
                blockButton(
                  width: Get.width*0.35,
                  
                    widget: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalPadding: 3),
                SizedBox(
                  height: Get.height * 0.08
                ),
                Container(
                  height: Get.height*0.4,
                  child: Image(
                    image: AssetImage(
                      'assets/logo 2.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 15, vertical: 15),
          ),
        ),
      ),
    );
  }
}
