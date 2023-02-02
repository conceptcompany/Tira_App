import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';

import '../core/resources/color_manager.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  const AuthButton({
    required this.onTap,
    required this.buttonText,
    Key? key,
    this.buttonTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 250.w,
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r), color: mainColor),
          child: Center(
            child: Text(
              buttonText,
              style: buttonTextStyle ??
                  getRegularStyle(
                      color: ColorManager.white, fontSize: FontSize.s18.sp),
            ),
          ),
        ));
  }
}
