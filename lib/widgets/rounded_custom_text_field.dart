import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/color_manager.dart';
import '../core/resources/values_manager.dart';

class RoundedCustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final TextStyle hintStyle;

  const RoundedCustomTextField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    required this.hintStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: ColorManager.white,
          hintText: hintText,
          filled: true,
          isDense: true,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.only(
              top: AppSize.s12.h, bottom: AppSize.s12.h, right: AppSize.s20.w),
          hintStyle: hintStyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s26.r),
              borderSide: BorderSide(color: mainColor, width: AppSize.s1.w)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s26.r),
              borderSide: BorderSide(color: mainColor, width: AppSize.s1.w))),
    );
  }
}
