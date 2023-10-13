import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/global/image_pickerController.dart';
import 'package:kisaan_electric/profile/controller/profileController.dart';
import 'package:kisaan_electric/wallet/controller/wallte_controller.dart';

class profile_view extends StatefulWidget {
  const profile_view({super.key});

  @override
  State<profile_view> createState() => _profile_viewState();
}

class _profile_viewState extends State<profile_view> {
  imagePickercontroller imagecontroller = Get.put(imagePickercontroller());
  wallet_controller controller = Get.put(wallet_controller());
  profilecontroller profileController = Get.put(profilecontroller());
  RxString groupValue = '1'.obs;
  RxString profilegroupvalue = '1'.obs;
  String personalDate = '';
  String AdditionalDate1 = '';
  String AdditionalDate2 = '';
  String AdditionalDate3 = '';


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
          body: Column(
            children: [
              customAppBar('My Profile'),
              Container(
                height: 1,
                width: Get.width,
                color: appcolor.borderColor,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CircleAvatar(
                            backgroundColor: appcolor.borderColor,
                            radius: 40,
                            child: CircleAvatar(
                              backgroundColor: appcolor.greyColor,
                              child: Icon(
                                Icons.person,
                              ),
                              radius: 39,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Get.height * 0.09),
                            height: Get.height * 0.03,
                            width: Get.width * 0.24,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: appcolor.borderColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffECFF0C),
                            ),
                            child: Center(
                              child: Text(
                                '20%',
                                style: TextStyle(
                                  // height: 0.,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name : Mohit Kumar',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          'Phone : +91 89076 7689',
                          style: TextStyle(
                            height: 0.6,
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          'Registered On: 27 Sep 2023',
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ).paddingOnly(left: 5),
                  ],
                ),
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
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  padding: EdgeInsets.zero,
                  // labelPadding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  controller: controller.tabcontroller,
                  tabs: [
                    Container(
                      padding: EdgeInsets.zero,
                      child: Text(
                        'Personel Info',
                      ),
                    ),
                    Container(
                      child: Text('Transfer Info'),
                    ),
                    Text('Documents Info'),
                    Text('Additional Info'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabcontroller,
                  children: [
                    personelInfo(),
                    TransferInfo(),
                    Documents(),
                    AdditionalInfo(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget personelInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                  verticalContentPadding: 0,
                  hinttext: 'Full Name',
                  hintTextColor: Colors.black,
                  bottomLineColor: Colors.black,
                  suffixIcon: Container(
                    height: Get.height * 0.02,
                    child: Image(
                      image: AssetImage('assets/Vector.png'),
                    ),
                  ),
                  newIcon: Container(
                    height: Get.height * 0.025,
                    child: Image(
                      image: AssetImage('assets/Vector.png'),
                    ),
                  )),
            ),
            Obx(
              () => Container(
                height: Get.height * 0.04,
                child: Row(
                  children: [
                    Radio(
                      value: '1',
                      groupValue: profilegroupvalue.value,
                      onChanged: (val) {
                        profilegroupvalue.value = val.toString();
                      },
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => appcolor.mixColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        groupValue.value = '1';
                      },
                      child: Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Radio(
                      value: '2',
                      groupValue: profilegroupvalue.value,
                      onChanged: (val) {
                        profilegroupvalue.value = val.toString();
                      },
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => appcolor.mixColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        groupValue.value = '2';
                      },
                      child: Text(
                        'Female',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                callback: () async {
                  print('hii');
                  personalDate =
                      await profileController.showdatepicker(context);
                  setState(() {});
                },
                readOnly: true,
                key_type: TextInputType.datetime,
                verticalContentPadding: 0,
                hinttext: personalDate == '' ? 'Birth Date' : personalDate,
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/birthdate.png'),
                  ),
                ),
              ),
            ),
            
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                key_type: TextInputType.number,
                verticalContentPadding: 0,
                hinttext: 'Phone Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/support.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                key_type: TextInputType.phone,
                verticalContentPadding: 0,
                hinttext: 'Whatsapp Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/whatsapp.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: 'Email',
                key_type: TextInputType.emailAddress,
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/email.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: 'Address',
                key_type: TextInputType.streetAddress,
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/location.png'),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: Get.width * 0.5,
                  height: Get.height * 0.055,
                  child: customtextformfield(
                    verticalContentPadding: 0,
                    hinttext: 'Pin Code',
                    key_type: TextInputType.number,
                    hintTextColor: Colors.black,
                    bottomLineColor: Colors.black,
                  ),
                ),
                blockButton(
                  borderradius: 15,
                  verticalPadding: 0,
                  width: Get.width * 0.3,
                  widget: Text(
                    'Check',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Select Country',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
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
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Select City',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
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
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Select State',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        value: 2),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                callback: () {},
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget TransferInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Bank Account Details',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                hinttext: 'Bank Name',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/bank.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                hinttext: 'Account Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/bank.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                hinttext: 'IFSC Code',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/bank.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: 'Account Holder Name',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/Vector.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Text(
              'Paytm Wallet Detail',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                key_type: TextInputType.number,
                hinttext: 'Paytm Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/phone.png'),
                  ),
                ),
              ),
            ),
            Text(
              'Bank Documents',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.15,
                      width: Get.width * 0.27,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Cancelled\nCheque',
                      style: TextStyle(fontSize: 19, height: 1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.15,
                      width: Get.width * 0.27,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Passbook',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.15,
                      width: Get.width * 0.27,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Paytm KYC\nScreenshot',
                      style: TextStyle(fontSize: 19, height: 1.1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Documents() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Aadhar Details',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                hinttext: 'Aadhar Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                key_type: TextInputType.number,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/acctDetails.png'),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.2,
                      child: Center(
                          child: Text(
                        'Upload\nAadhar\nCard',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Front Side',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Back Side',
                      style: TextStyle(fontSize: 19, height: 0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              'Pan Details',
              style: TextStyle(fontSize: 23, height: 1),
            ),
            Container(
              height: Get.height * 0.045,
              child: customtextformfield(
                gradient: appcolor.voidGradient,
                verticalContentPadding: 0,
                key_type: TextInputType.name,
                hinttext: 'Pan Number',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/acctDetails.png'),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upload Pan card ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: Get.height * 0.2,
                      width: Get.width * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GST Certificate\nUpload',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Container(
                      height: Get.height * 0.2,
                      width: Get.width * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/add.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ).marginOnly(top: 10),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget AdditionalInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Electrician Form',
              style: TextStyle(fontSize: 23, height: 1),
            ),
            Text(
              'kindly Fill the following Details',
              style: TextStyle(
                fontSize: 20,
                height: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: '1. Nationality',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
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
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: '2. Marital Status',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        value: 2),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Children Info',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 10),
            Obx(
              () => Container(
                height: Get.height * 0.03,
                child: Row(
                  children: [
                    Radio(
                      value: '1',
                      groupValue: groupValue.value,
                      onChanged: (val) {
                        groupValue.value = val.toString();
                      },
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => appcolor.mixColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        groupValue.value = '1';
                      },
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Radio(
                      value: '2',
                      groupValue: groupValue.value,
                      onChanged: (val) {
                        groupValue.value = val.toString();
                      },
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => appcolor.mixColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        groupValue.value = '2';
                      },
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Radio(
                      value: '3',
                      groupValue: groupValue.value,
                      onChanged: (val) {
                        groupValue.value = val.toString();
                      },
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => appcolor.mixColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        groupValue.value = '3';
                      },
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.055,
                  width: Get.width * 0.45,
                  child: customtextformfield(
                      hinttext: 'Name',
                      hintTextColor: Colors.black,
                      bottomLineColor: Colors.black),
                ),
                Container(
                  height: Get.height * 0.055,
                  width: Get.width * 0.45,
                  child: customtextformfield(
                    readOnly: true,
                    callback: ()async{
                      AdditionalDate1 =
                      await profileController.showdatepicker(context);
                  setState(() {});
                    },
                      key_type: TextInputType.datetime,
                      hinttext:AdditionalDate1==''? 'Birth Date':AdditionalDate1,
                      hintTextColor: Colors.black,
                      newIcon: Container(
                        height: Get.height * 0.025,
                        child: Image(
                          image: AssetImage('assets/birthdate.png'),
                        ),
                      ),
                      bottomLineColor: Colors.black),
                ),
              ],
            ),
            
            Container(
              height: Get.height * 0.055,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: '3. Study In',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
                newIcon: Container(
                  height: Get.height * 0.025,
                  child: Image(
                    image: AssetImage('assets/birthdate.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: '4. Blood Group',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
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
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: '5. Total Work Experience',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      height: 2.5,
                    ),
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'Option 2',
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
              margin: EdgeInsets.only(top: 0),
              height: Get.height * 0.055,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: '6. Language Known(Reading)',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
              ),
            ),
            Container(
              height: Get.height * 0.055,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: '7. Language Known(Writing)',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
              ),
            ),
            Container(
              height: Get.height * 0.055,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: '8. Language Known(Speaking)',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
              ),
            ),
            Container(
              height: Get.height * 0.055,
              child: customtextformfield(
                verticalContentPadding: 0,
                hinttext: '9. Dealer/Partner Information',
                hintTextColor: Colors.black,
                bottomLineColor: Colors.black,
              ),
            ),
            Container(
              height: Get.height * 0.05,
              child: blockButton(
                borderradius: 15,
                verticalPadding: 0,
                width: Get.width * 0.3,
                widget: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
