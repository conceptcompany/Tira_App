import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/color_manager.dart';

class AuthContainer extends StatelessWidget {
  final double? height;
  final Widget widget;
  final EdgeInsets padding, margin;

  const AuthContainer(
      {this.height,
      required this.widget,
      Key? key,
      required this.padding,
      required this.margin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: padding,
        margin: margin,
        constraints:
            BoxConstraints(maxHeight: 580.0, maxWidth: double.infinity),
        decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 15.r,
              offset: const Offset(0, 5), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(48.r),
        ),
        child: SingleChildScrollView(child: widget));
  }
}
