import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';
import 'package:kisaan_electric/global/customAppBar.dart';
import 'package:kisaan_electric/global/custom_drawer.dart';
import 'package:kisaan_electric/global/customtextformfield.dart';
import 'package:kisaan_electric/global/gradient_text.dart';
import 'package:kisaan_electric/products/view/ceilingfan_view.dart';
import 'package:kisaan_electric/products/view/eco_series_view.dart';

class product_view extends StatefulWidget {
  const product_view({super.key});

  @override
  State<product_view> createState() => _product_viewState();
}

class _product_viewState extends State<product_view> {
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
                Container(
                  height: 120,
                  width: Get.width,
                  child: Image(
                    image: AssetImage(
                      'assets/4279110 1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'Series',
                            style: TextStyle(
                              fontSize: 28,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(ecoSeries_view());
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 4,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/image 7.png',
                                  ),
                                ),
                              ),
                              Text(
                                'Eco Series',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 4,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/image 8.png',
                                  ),
                                ),
                              ),
                              Text(
                                'Standard Series',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 4,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/image 9.png',
                                  ),
                                ),
                              ),
                              Text(
                                'Premium Series',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Row(
                      children: [
                        GradientText(
                          gradient: appcolor.gradient,
                          widget: Text(
                            'All Categories',
                            style: TextStyle(
                              fontSize: 28,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(ceiling_fan());
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 4,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/image 8.png',
                                  ),
                                ),
                              ),
                              Text(
                                'Ceiling Fan',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/image 9.png',
                                ),
                              ),
                            ),
                            Text(
                              'Concealed Light\n Box',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/image 9.png',
                                ),
                              ),
                            ),
                            Text(
                              'Concealed Light\n Box',
                              style: TextStyle(fontSize: 16, height: 1),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/image 10.png',
                                ),
                              ),
                            ),
                            Text(
                              'MCB\nDistribution\nBox',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 4,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/image 11.png',
                                ),
                              ),
                            ),
                            Text(
                              'Non Modular\nBox',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 4,
                          ),
                          child: Image(
                            image: AssetImage(
                              'assets/image 25.png',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 4,
                          ),
                          child: Image(
                            image: AssetImage(
                              'assets/image 25.png',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 4,
                          ),
                          child: Image(
                            image: AssetImage(
                              'assets/image 25.png',
                            ),
                          ),
                        ),
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
}
