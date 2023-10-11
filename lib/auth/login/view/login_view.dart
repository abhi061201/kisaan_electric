import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisaan_electric/auth/forgetPassword_view.dart';
import 'package:kisaan_electric/auth/login/controller/login_controller.dart';
import 'package:kisaan_electric/auth/register/view/register.dart';
import 'package:kisaan_electric/auth/reset_password.dart';
import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/home/view/home_view.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  login_controller controller = Get.put(login_controller());
  var value = null;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      width: Get.width * 0.35,
                      height: Get.height * 0.04,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(
                            0xffDD2B1C,
                          ),
                        ),
                      ),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Language',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            height: 1,
                          ),
                        ),
                        value: value,
                        onChanged: (value) {},
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'English',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                              child: Text(
                                'Hindi',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 2),
                          DropdownMenuItem(
                              child: Text(
                                'Punjabi',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 3),
                          DropdownMenuItem(
                              child: Text(
                                'Gujrati',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 4),
                          DropdownMenuItem(
                              child: Text(
                                'Marathi',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 5),
                          DropdownMenuItem(
                              child: Text(
                                'Odia',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 6),
                          DropdownMenuItem(
                              child: Text(
                                'Nepali',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              value: 7),
                        ],
                      ),
                    ),
                  ],
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         color: Color(0xffD9D9D9),
                //         borderRadius: BorderRadius.circular(5),
                //         border: Border.all(
                //           color: Color(
                //             0xffDD2B1C,
                //           ),
                //         ),
                //       ),
                //       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                //       child: Row(
                //         children: [
                //           Text(
                //             'Language',
                //             style: TextStyle(
                //               fontSize: 20,
                //             ),
                //           ),
                //           Icon(Icons.arrow_drop_down)
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: Text(
                      'Login',
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
                    hinttext: 'Mobile Number',
                    suffixIcon: Icon(Icons.call),
                    newIcon: Icon(Icons.call),
                    key_type: TextInputType.phone,
                    maxLength: 10,
                  ),
                ),
                Container(
                  height: Get.height * 0.055,
                  child: customtextformfield(
                      hinttext: 'Password',
                      suffixIcon: Icon(Icons.lock),
                      newIcon: Icon(
                        Icons.lock_open,
                      ),
                      showPassword: !controller.showPassword.value,
                      key_type: TextInputType.visiblePassword,
                      callback: () {
                        controller.showPassword.value =
                            !controller.showPassword.value;

                        setState(() {});
                      }),
                ),
                Container(
                  height: Get.height*0.055,
                  child: blockButton(
                    callback: () {
                      Get.to(Home_view());
                    },
                    width: Get.width * 0.3,
                    
                    widget: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    ),
                    verticalPadding:3 ,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(forgotPassword_view());
                  },
                  child: Container(
                    child: GradientText(
                      widget: Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      gradient: appcolor.gradient,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: GradientText(
                        widget: Text(
                          'Don\'t have any account? ',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        gradient: appcolor.gradient,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.off(register_view());
                      },
                      child: Stack(
                        children: [
                          Container(
                            child: GradientText(
                              widget: Text(
                                'SignUp',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              gradient: appcolor.gradient,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                width: 56,
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
                  height: Get.height * 0.07,
                ),
                Container(
                  child: Image(
                    image: AssetImage(
                      'assets/login 1.png',
                    ),
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
