import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 215.5.w),
        child: Image.asset(
          'assets/images/e.png',
          width: 251.68.w,
          height: 138.51.h,
        ));
  }
}
