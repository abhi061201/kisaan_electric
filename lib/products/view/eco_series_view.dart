import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kisaan_electric/global/appcolor.dart';
import 'package:kisaan_electric/global/blockButton.dart';

import 'package:kisaan_electric/global/custom_drawer.dart';

import 'package:kisaan_electric/global/gradient_text.dart';

class ecoSeries_view extends StatefulWidget {
  const ecoSeries_view({super.key});

  @override
  State<ecoSeries_view> createState() => _ecoSeries_viewState();
}

class _ecoSeries_viewState extends State<ecoSeries_view> {
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                            'Eco Products',
                            style: TextStyle(
                              fontSize: 26,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ).paddingOnly(
                      bottom: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 15,
                      children: [
                        appItemWidget(),
                        appItemWidget(),
                        appItemWidget(),
                        appItemWidget(),
                        appItemWidget(),
                        appItemWidget(),
                      ],
                    )
                  ],
                ).paddingSymmetric(horizontal: 10, vertical: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appItemWidget() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            bottom: 0,
          ),
          child: Image(
            image: AssetImage(
              'assets/image 25.png',
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
