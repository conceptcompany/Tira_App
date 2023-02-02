import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/resources/styles_manager.dart';

import '../core/resources/color_manager.dart';
import '../core/resources/font_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? hintText;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const CustomTextField({
    Key? key,
    this.keyboardType,
    this.hintText,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.hintStyle,
    this.obscureText,
    this.suffixIcon,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: enabledBorderColor ?? hintColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: focusedBorderColor ?? hintColor),
        ),
        hintStyle: hintStyle ??
            getRegularStyle(color: hintColor, fontSize: FontSize.s15.sp),
      ),
    );
  }
}
