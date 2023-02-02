import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/rounded_custom_text_field.dart';

class FormWidget extends StatelessWidget {
  int? lines = 1;
  String label;
  String hint;
  Icon? icon;
  double? height = 50.0;

  FormWidget({
    this.lines,
    required this.label,
    required this.hint,
    this.icon,
    this.height,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    lines == 3 || lines == 4 ? height : height = 62.h;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.theme.primaryTextTheme.displayMedium,
        ),
        SizedBox(
          height: height,
          child: RoundedCustomTextField(
            hintText: hint,
            hintStyle: context.theme.textTheme.bodyMedium!,
          ),
          // child: TextField(
          //   maxLines: lines,
          //   decoration: InputDecoration(
          //       fillColor: ColorManager.white,
          //       hintText: hint,
          //       filled: true,
          //       isDense: true,
          //       suffixIcon: icon,
          //       hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
          //       focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(25.r),
          //           borderSide: BorderSide(color: mainColor, width: 1.w)),
          //       enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(25.r),
          //           borderSide: BorderSide(color: mainColor, width: 1.w))),
          // ),
        )
      ],
    );
  }
}
