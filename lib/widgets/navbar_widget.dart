import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/resources/font_manager.dart';

import '../core/resources/styles_manager.dart';

class NavBarWidget extends StatelessWidget {
  String text;
  Widget image;
  Color colorText;
  VoidCallback? onPressed = () {};
  NavBarWidget({
    required this.text,
    required this.image,
    // required this.widget,
    required this.onPressed,
    required this.colorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // splashColor: mainColor,
      // hoverColor: black,
      // highlightColor: mainColor,
      onPressed: onPressed,
      padding: EdgeInsets.zero,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          image,
          Text(
            text,
            style: getRegularStyle(color: colorText, fontSize: FontSize.s14.sp),
          ),
        ],
      ),
    );
  }
}
