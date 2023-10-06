import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appcolor.dart';

Widget blockButton({
  Widget? widget,
  double? width,
  double? horizontalPadding,
  double? verticalPadding,
  double? borderradius,
  Function()? callback,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      margin: EdgeInsets.all(4),
      width: width == null ? Get.width * 0.26 : width,
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding == null ? 14 : horizontalPadding,
          vertical: verticalPadding == null ? 10 : verticalPadding),
      decoration: BoxDecoration(
        gradient: appcolor.gradient,
        borderRadius: BorderRadius.circular(borderradius==null?8:borderradius),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Center(child: widget),
    ),
  );
}
