import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/auth/login/controller/login_controller.dart';
import 'package:kisaan_electric/auth/login/view/login_view.dart';
import 'package:kisaan_electric/auth/register/controller/register_controller.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class reset_password extends StatefulWidget {
  const reset_password({super.key});

  @override
  State<reset_password> createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
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
                  height: Get.height * 0.06,
                ),
                Container(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Change Password',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: Get.height * 0.055,
                  child: customtextformfield(
                    hinttext: 'Mobile Number*',
                    suffixIcon: Icon(Icons.call),
                    newIcon: Icon(Icons.call),
                    key_type: TextInputType.phone,
                    maxLength: 10,
                  ),
                ),
                Container(
                  height: Get.height * 0.055,
                  child: customtextformfield(
                    hinttext: 'Old Password*',
                    suffixIcon: Icon(Icons.lock_open),
                    newIcon: Icon(
                      Icons.lock,
                    ),
                    key_type: TextInputType.visiblePassword,
                  ),
                ),
                Container(
                  height: Get.height * 0.055,
                  child: customtextformfield(
                    hinttext: 'New Password*',
                    suffixIcon: Icon(Icons.lock),
                    newIcon: Icon(Icons.lock),
                    showPassword: true,
                    key_type: TextInputType.visiblePassword,
                  ),
                ),
                Container(
                  height: Get.height * 0.055,
                  child: customtextformfield(
                    hinttext: 'Confirm Password*',
                    suffixIcon: Icon(Icons.lock_open),
                    newIcon: Icon(
                      Icons.lock,
                    ),
                    key_type: TextInputType.visiblePassword,
                  ),
                ),
                Container(
                  height: Get.height * 0.055,
                  child: blockButton(
                      width: Get.width * 0.35,
                      widget: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            height: 1.2),
                      ),
                      verticalPadding: 3),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  height: Get.height * 0.4,
                  child: Image(
                    image: AssetImage(
                      'assets/imgpsh_fullsize_anim (2) 1.png',
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
