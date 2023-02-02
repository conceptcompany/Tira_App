import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resources/color_manager.dart';

class ServicesCard extends StatelessWidget {
  Color cardColor;
  Color textColor;
  Color imageColor;

  ServicesCard(
      {required this.cardColor,
      required this.imageColor,
      required this.textColor,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(width: 1.w, color: ColorManager.mainColor),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.16),
              offset: const Offset(0, 3),
              blurRadius: 6.r,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/mms.png',
            // color: cardColor,
          ),
          Text(
            ' الصحة و التعليم',
            style: TextStyle(color: ColorManager.textColor, fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}
