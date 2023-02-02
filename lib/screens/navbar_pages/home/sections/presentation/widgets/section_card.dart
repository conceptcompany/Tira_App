import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/font_manager.dart';

import '../../../../../../core/resources/assets_manager.dart';
import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppSize.s8.h),
      padding: EdgeInsets.only(
          top: AppSize.s12.h,
          right: AppSize.s18.w,
          left: AppSize.s18.w,
          bottom: AppSize.s30.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s10.r),
        boxShadow: const [
          BoxShadow(
              blurRadius: 10,
              color: Color.fromRGBO(88, 88, 88, 0.48),
              blurStyle: BlurStyle.outer)
        ],
        color: ColorManager.white,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('قسم الجباية و الضرائب',
                      style: context.textTheme.displayMedium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(ImageAssets.userIcon),
                      SizedBox(
                        width: AppSize.s10.w,
                      ),
                      Text(
                        'الموظف المسؤول',
                        style: getRegularStyle(
                            color: secondColor, fontSize: FontSize.s18.sp),
                      ),
                      Text(
                        'جابر عمر',
                        style: getRegularStyle(
                            color: secondColor, fontSize: FontSize.s18.sp),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssets.phoneIcon),
                      SizedBox(
                        width: AppSize.s10.w,
                      ),
                      const Text('0595455959'),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssets.emailIcon),
                      SizedBox(
                        width: AppSize.s10.w,
                      ),
                      const Text('youadmin@host.as')
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: AppSize.s100,
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s18.w, vertical: AppSize.s5.h),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.mainColor,
                  boxShadow: [
                    BoxShadow(
                        color: ColorManager.mainColor, blurRadius: AppSize.s8.r)
                  ]),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageAssets.phoneIcon,
                    height: AppSize.s44.h,
                    width: AppSize.s44.w,
                    color: ColorManager.white,
                  ),
                  Text(
                    AppStrings.callSections,
                    style: getRegularStyle(
                        color: ColorManager.white, fontSize: FontSize.s12.sp),
                  )
                ],
              ),
            )
            // GestureDetector(child: Image.asset('assets/images/call.png'))
          ]),
    );
  }
}
