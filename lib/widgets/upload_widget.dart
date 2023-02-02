import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/color_manager.dart';

class UploadWidget extends StatelessWidget {
  final String label;
  final String image;
  final String imageLabel;

  const UploadWidget({
    required this.label,
    required this.image,
    required this.imageLabel,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18.sp,
            // fontWeight: FontWeight.bold,
            color: secondColor,
          ),
        ),
        Container(
          height: 130.h,
          width: 375.w,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(218, 89, 59, 0.20),
              border: Border.all(
                color: ColorManager.mainColor,
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(
                imageLabel,
                style: TextStyle(color: Colors.black45, fontSize: 15.sp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
