import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'appcolor.dart';
import 'gradient_text.dart';

Widget customtextformfield({
  
  bool ? readOnly,
  Color? hintTextColor,
  Color? bottomLineColor,
  String? hinttext,
  TextEditingController? controller,
  Widget? suffixIcon,
  bool showPassword = false,
  TextInputType? key_type,
  Widget? newIcon,
  Function()? callback,
  var validator,
  int? maxLength,
  double? horizontalcontentPadding,
  double? verticalContentPadding,
  Gradient? gradient,
  InputBorder? border,
  bool ? enabled,
}) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: TextFormField(
      onTap: callback,
      readOnly: readOnly==null?false:readOnly,
      enabled: enabled,
      cursorHeight: 28,
      cursorColor: hintTextColor == null ? appcolor.mixColor : hintTextColor,
      validator: validator,
      keyboardType: key_type,
      controller: controller,
      obscureText: showPassword,
      maxLength: maxLength,
      style: TextStyle(
        color: hintTextColor == null ? appcolor.mixColor : hintTextColor,
        fontSize: 24,
      ),
      decoration: InputDecoration(
        counter: Offstage(),
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal:
              horizontalcontentPadding == null ? 0 : horizontalcontentPadding,
          vertical: verticalContentPadding == null ? 0 : verticalContentPadding,
        ),
        suffix: InkWell(
          onTap: callback,
          child: gradient == null
              ? Container(
                  child: GradientText(
                    gradient: appcolor.gradient,
                    widget: showPassword == false ? newIcon : suffixIcon,
                  ),
                )
              : Container(
                  child: newIcon,
                ),
        ),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: hintTextColor == null ? Color(0xff8e2b59) : hintTextColor,
          fontSize: 22,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: bottomLineColor == null
                ? appcolor.purpleColor
                : bottomLineColor,
          ),
        ),
        focusedBorder:border==null? UnderlineInputBorder(
          borderSide: BorderSide(
            color: hintTextColor == null ? Color(0xff8e2b59) : hintTextColor,
          ),
        ):border,
        border: InputBorder.none,
      ),
    ),
  );
}
