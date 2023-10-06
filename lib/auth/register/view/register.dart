import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/auth/login/controller/login_controller.dart';
import 'package:kisaan_electric/auth/login/view/login_view.dart';
import 'package:kisaan_electric/auth/register/controller/register_controller.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';

class register_view extends StatefulWidget {
  const register_view({super.key});

  @override
  State<register_view> createState() => _register_viewState();
}

class _register_viewState extends State<register_view> {
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
                    // height: Get.height * 0.08,
                    ),
                Container(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                customtextformfield(
                  hinttext: 'Name*',
                  suffixIcon: Icon(Icons.person),
                  newIcon: Icon(Icons.person),
                  key_type: TextInputType.name,
                ),
                customtextformfield(
                  hinttext: 'Mobile Number*',
                  suffixIcon: Icon(Icons.call),
                  newIcon: Icon(Icons.call),
                  key_type: TextInputType.phone,
                  maxLength: 10,
                ),
                 customtextformfield(
                hinttext: 'Confirm Password*',
                suffixIcon: Icon(Icons.lock_open),
                newIcon: Icon(
                  Icons.lock,
                ),
                key_type: TextInputType.visiblePassword,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GradientText(
                      gradient: appcolor.gradient,
                      widget: Text(
                        'Your Profession',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 10),
                Obx(
                  () => Row(
                    children: [
                      Radio(
                        value: '1',
                        groupValue: controller.groupValue.value,
                        onChanged: (val) {
                          controller.groupValue.value = val.toString();
                        },
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => appcolor.mixColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.groupValue.value = '1';
                        },
                        child: Text(
                          'Electrician',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Radio(
                        value: '2',
                        groupValue: controller.groupValue.value,
                        onChanged: (val) {
                          controller.groupValue.value = val.toString();
                        },
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => appcolor.mixColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.groupValue.value = '2';
                        },
                        child: Text(
                          'Dealer',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Radio(
                        value: '3',
                        groupValue: controller.groupValue.value,
                        onChanged: (val) {
                          controller.groupValue.value = val.toString();
                        },
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => appcolor.mixColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.groupValue.value = '3';
                        },
                        child: Text(
                          'Partner',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => customwidget(controller.groupValue.value),
                ),
                blockButton(
                    width: Get.width * 0.35,
                    widget: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalPadding: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: GradientText(
                        widget: Text(
                          'Have Kisaan account? ',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        gradient: appcolor.gradient,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAll(login_view());
                      },
                      child: Stack(
                        children: [
                          Container(
                            child: GradientText(
                              widget: Text(
                                'Login',
                                style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              gradient: appcolor.gradient,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 18,),
                              Container(
                                width: 45,
                                height: 1,
                                color: appcolor.redColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Container(
                  height: Get.height * 0.3,
                  child: Image(
                    image: AssetImage(
                      'assets/image 6.png',
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

Widget customwidget(String type) {
  //electric
  if (type == '1') {
    return Container(
      child: customtextformfield(hinttext: 'Dealer/Partner Uniq id'),
    );
  } else if (type == '2') {
    return Container(
      child: Column(
        children: [
          customtextformfield(hinttext: 'Business Name'),
          customtextformfield(hinttext: 'Partner Uniq id'),
        ],
      ),
    );
  } else {
    return Container(
      child: customtextformfield(hinttext: 'Business Name'),
    );
  }
}
