import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/color_manager.dart';
import '../core/resources/font_manager.dart';

class AppBarr extends StatelessWidget {
  String title;
  Widget? leading = const SizedBox(
    width: 2,
  );
  Widget actions;

  AppBarr({required this.title, this.leading, required this.actions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
              color: ColorManager.white,
              fontSize: 20.sp,
              fontWeight: FontWeightManager.semiBold),
        ),
        leading: leading,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: actions,
          )
        ],
      ),
    );
  }
}
