import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/myorders/persentation/view/order_details.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.s10.w),
      margin: EdgeInsets.symmetric(
          horizontal: AppSize.s5.w, vertical: AppSize.s5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10.h),
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(0.18),
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
            children: [
              const Icon(Icons.calendar_month_outlined),
              Text(
                'قبل 5 دقائق ',
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
                Get.to(() => const OrderDetails());
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(AppSize.s140.w, AppSize.s30.h),
                  backgroundColor: ColorManager.white,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s5.r)),
                  // padding: EdgeInsets.symmetric(horizontal: AppSize.s40.w),
                  side: BorderSide(
                      color: ColorManager.mainColor, width: AppSize.s1_5.w)),
              child: Text(
                'عرض تفاصيل الطلب',
                style: context.textTheme.displaySmall,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(ImageAssets.requsetIcon),
              Text(
                'رقم الطلب: 5',
                style: context.textTheme.bodySmall,
              ),
              SvgPicture.asset(ImageAssets.requsetStatusIcon),
              Text(
                'حالة الطلب: جديد',
                style: context.textTheme.bodySmall,
              ),
              SvgPicture.asset(ImageAssets.calendarDateIcon),
              Text(
                'تاريخ التقديم: 3-8-2022',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Image.asset('assets/images/num.png'),
          //     Text('رقم الطلب: 5'),
          //     Image.asset('assets/images/status.png'),
          //     Text('حالة الطلب: جديد'),
          //     Image.asset('assets/images/date.png'),
          //     Text('تاريخ التقديم: 3-8-2022'),
          //   ],
          // )
        ],
      ),
    );
  }
}
