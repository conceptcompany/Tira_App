import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/color_manager.dart';

class ContainerBody extends StatelessWidget {
  Widget widget;
  EdgeInsets? padding;

  ContainerBody({required this.widget, Key? key, this.padding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 428.w,
        // height: 800.h,
        padding: padding,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r))),
        child: widget);
  }
}
