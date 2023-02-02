import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../core/resources/color_manager.dart';
import '../core/resources/values_manager.dart';

class ListDrawerWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;

  const ListDrawerWidget(
      {required this.image,
      required this.title,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onPressed,
          leading: SvgPicture.asset(
            image,
            height: AppSize.s30.h,
            width: AppSize.s32.w,
          ),
          horizontalTitleGap: AppSize.s2.w,
          title: Text(title, style: context.theme.primaryTextTheme.bodyLarge),
        ),
        Divider(
          thickness: 1,
          height: 0,
          color: background,
          indent: 15,
          endIndent: 15,
        ),
      ],
    );
  }
}
