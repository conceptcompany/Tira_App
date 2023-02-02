import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/assets_manager.dart';
import 'package:tira_app/core/resources/strings_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';

import '../core/resources/color_manager.dart';

class CallContainer extends StatelessWidget {
  const CallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: AppSize.s40.h),
        child: Container(
          width: AppSize.s233.w,
          height: AppSize.s233.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.outerCircle,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.outerCircleShadow,
                  blurRadius: AppSize.s15.r,
                )
              ]),
          child: Container(
            margin: EdgeInsets.all(AppSize.s16.h),
            padding: EdgeInsets.all(AppSize.s10.h),
            decoration: BoxDecoration(
                border: Border.all(
                    color: ColorManager.white,
                    width: AppSize.s0_75.w,
                    strokeAlign: StrokeAlign.center,
                    style: BorderStyle.solid),
                shape: BoxShape.circle,
                gradient: ColorManager.middleCircleGradient,
                boxShadow: [
                  BoxShadow(
                      color: ColorManager.middleCircleShadow.withOpacity(0.3),
                      blurRadius: AppSize.s2.r,
                      offset: Offset(AppSize.s0, AppSize.s2.h),
                      blurStyle: BlurStyle.outer),
                ]),
            child: Container(
              // height: 115.h,
              // width: 115.w,
              decoration: const BoxDecoration(
                  color: ColorManager.mainColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/rr.png'),
                      alignment: Alignment.topCenter,
                      opacity: 0.6)),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageAssets.phoneIcon,
                    height: AppSize.s80.h,
                    width: AppSize.s80.w,
                    color: ColorManager.white,
                  ),
                  // Image.asset(
                  //   'assets/images/phone.png',
                  //   width: 79.h,
                  //   height: 79.w,
                  // ),
                  Text(
                    AppStrings.callMukid,
                    style: context.theme.primaryTextTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
