import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class ReportsCard extends StatelessWidget {
  const ReportsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: const Color.fromRGBO(88, 88, 88, 4.3),
                blurRadius: 10.r,
                offset: const Offset(0, 0)),
          ],
          color: ColorManager.white),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'نوع  التقرير:',
                        style: context.textTheme.displayLarge,
                        children: [
                      TextSpan(
                        text: ' الأمن و السلامة -  عنف الحيوانات',
                        style: context.textTheme.titleMedium,
                      ),
                    ])),
                Icon(
                  Icons.more_horiz,
                  color: iconColor,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  ImageAssets.attachIcon,
                  height: AppSize.s20.h,
                  width: AppSize.s20.w,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'المرفقات:  2',
                  style: context.textTheme.titleMedium,
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => PollsDetails());
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, AppSize.s30.h),
                    backgroundColor: ColorManager.white,
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s5.r)),
                    // padding: EdgeInsets.symmetric(horizontal: AppSize.s40.w),
                    side: BorderSide(
                        color: ColorManager.mainColor, width: AppSize.s1_5.w)),
                child: Text(
                  'عرض تفاصيل التقرير',
                  style: context.textTheme.displaySmall,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(ImageAssets.requsetIcon),
                Text(
                  'رقم التقرير: 5',
                  style: context.textTheme.bodySmall,
                ),
                SvgPicture.asset(ImageAssets.requsetStatusIcon),
                Text(
                  'حالة التقرير: مكتمل',
                  style: context.textTheme.bodySmall,
                ),
                SvgPicture.asset(ImageAssets.calendarDateIcon),
                Text(
                  'تاريخ التقديم: 3-8-2022',
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
