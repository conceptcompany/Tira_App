import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/screens/navbar_pages/services/persentation/view/details_form.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/strings_manager.dart';

class ServicesDetailsCard extends StatelessWidget {
  const ServicesDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.s10.h),
      margin: EdgeInsets.only(bottom: AppSize.s8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10.r),
          boxShadow: [
            BoxShadow(
                color: ColorManager.shadowColor.withOpacity(0.14),
                blurRadius: AppSize.s10.r,
                offset: const Offset(AppSize.s0, AppSize.s0))
          ],
          color: ColorManager.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'تسجيل المواليد الجدد لشهر سبتمبر',
                style: context.textTheme.bodyLarge,
              ),
              Icon(
                Icons.more_horiz,
                color: iconColor,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.calendar_month_outlined),
              SizedBox(
                width: AppSize.s5.w,
              ),
              Text(
                'قبل 5 دقائق',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد ',
            maxLines: 2,
            style: context.textTheme.bodyMedium,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const DetailsForm());
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(AppSize.s140.w, AppSize.s30.h),
                  backgroundColor: ColorManager.white,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s5.r)),
                  // padding: EdgeInsets.symmetric(horizontal: AppSize.s40.w),
                  side:
                      BorderSide(color: ColorManager.mainColor, width: 1.6.w)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.applyNow,
                    style: context.textTheme.displaySmall,
                  ),
                  const Icon(
                    Icons.add,
                    color: ColorManager.mainColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
