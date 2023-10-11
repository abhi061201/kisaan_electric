import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';

import 'package:kisaan_electric/global/custom_drawer.dart';

import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/products/controller/product_controller.dart';
import 'package:kisaan_electric/wallet/controller/wallte_controller.dart';

class detailedProductView extends StatefulWidget {
  const detailedProductView({super.key});

  @override
  State<detailedProductView> createState() => _detailedProductViewState();
}

class _detailedProductViewState extends State<detailedProductView> {
  productController controller = Get.put(productController());
  @override
  var value = null;
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
          drawer: customDrawer(),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: appcolor.gradient,
              ),
            ),
            title: Container(
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              width: Get.width * 0.7,
              child: Center(
                child: TextFormField(
                  cursorHeight: 25,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      )),
                ),
              ),
            ),
            leadingWidth: 35,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                color: Colors.white,
              ),
            ],
            leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.sort,
                  ),
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(
                                  'assets/image 15.png',
                                ),
                              ),
                            ),
                            Wrap(
                              children: [
                                Container(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/image 16.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/image 16.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/image 16.png',
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Double Door(Gold Series)',
                              style: TextStyle(fontSize: 22, height: 0.9),
                            ),
                            Text(
                              '₹1,000.00 – ₹1,490.00',
                              style: TextStyle(
                                color: appcolor.newRedColor,
                                fontSize: 22,
                                height: 0.9,
                              ),
                            ),
                            Text(
                              'Description',
                              style: TextStyle(fontSize: 22, height: 0.9),
                            ),
                            Text(
                              'Being  quality-conscious\norganization, we are instrument.',
                              style: TextStyle(fontSize: 16, height: 0.9),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: 8, top: 3, left: 10, right: 10),
                              width: Get.width * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(
                                    0xffDD2B1C,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Choose an Option',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      height: 1,
                                    ),
                                  ),
                                  value: value,
                                  onChanged: (value) {},
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        'Option 1',
                                        style: TextStyle(
                                          fontSize: 24,
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                        child: Text(
                                          'Option 2',
                                          style: TextStyle(
                                            fontSize: 24,
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
                                Container(
                                  padding: EdgeInsets.only(
                                      bottom: 8, top: 3, left: 10, right: 10),
                                  width: Get.width * 0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(
                                        0xffDD2B1C,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration.collapsed(
                                        hintText: '1',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          height: 1,
                                        ),
                                      ),
                                      value: value,
                                      onChanged: (value) {},
                                      items: [
                                        DropdownMenuItem(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(
                                            child: Text(
                                              '2',
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
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 12),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      color: appcolor.newRedColor,
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      )),
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      height: 0.7,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
                              'Description'.tr,
                            ),
                          ),
                          Container(
                            child: Text('Additional Information'.tr),
                          ),
                          Text('Review'.tr),
                        ],
                      ),
                    ),
                    Container(
                      height: Get.height * 0.22,
                      child: Expanded(
                        child: TabBarView(
                          controller: controller.tabcontroller,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 4,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Material- Galvanized Iron/ Mild Steel',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 1,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 4,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Raw Material- TATA Steel',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 1,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 4,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Feature- Flame and Rust Proof',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 1,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 4,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Dimensions- As per requirement',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 1,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 4,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Cable Entry- Side Entry',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Center(child: Text('Information')),
                            Center(child: Text('Review')),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GradientText(
                            gradient: appcolor.gradient,
                            widget: Text('Related Products', style: TextStyle(fontSize: 30),)),
                      ],
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        appItemWidget('assets/image 25.png'),
                        appItemWidget('assets/image 25.png'),
                        appItemWidget('assets/image 25.png'),
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: 10, vertical: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appItemWidget(
    String imagepath,
  ) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            bottom: 0,
          ),
          child: Image(
            image: AssetImage(
              imagepath,
            ),
          ),
        ),
        Container(
          child: Text(
            'Fan Round Box\n₹128.00 – ₹162.00',
            style: TextStyle(
              fontSize: 17,
              height: 0.9,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(
              color: appcolor.newRedColor,
              borderRadius: BorderRadius.circular(
                8,
              )),
          child: Text(
            'Buy Now',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              height: 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
