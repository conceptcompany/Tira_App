import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/polls/presentation/view/polls_details.dart';

import '../../../../../../core/resources/assets_manager.dart';
import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class PollsCard extends StatelessWidget {
  const PollsCard({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.only(bottom: 8.h),
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       boxShadow: [
    //         BoxShadow(
    //             color: Color.fromRGBO(88, 88, 88, 4.3),
    //             blurRadius: 10.r,
    //             offset: Offset(0, 0))
    //       ],
    //       color: ColorManager.white),
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Text(
    //             'إقامة مهرجان ثقافي لدعم ذوي الاحتياجات الخاصة',
    //             style: TextStyle(
    //                 fontSize: FontSize.s18,
    //                 fontWeight: FontWeightManager.medium),
    //           ),
    //           Image.asset('assets/images/meen.png')
    //         ],
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Icon(Icons.calendar_month_outlined),
    //           Text(
    //             'قبل 5 دقائق ',
    //             style: TextStyle(color: ColorManager.mainColor, fontSize: 18.sp),
    //           ),
    //         ],
    //       ),
    //       Text(
    //         'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد ',
    //         maxLines: 2,
    //         style:
    //             TextStyle(color: HexColor('#757575'), fontSize: FontSize.s16),
    //       ),
    //       Center(
    //         child: ElevatedButton(
    //           onPressed: () {
    //             Get.to(() => PollsDetails());
    //           },
    //           child: Text(
    //             'قم بالاستطلاع',
    //             style: TextStyle(color: ColorManager.mainColor, fontSize: FontSize.s14),
    //           ),
    //           style: ElevatedButton.styleFrom(
    //               fixedSize: Size(131.w, 31.h),
    //               backgroundColor: ColorManager.white,
    //               side: BorderSide(color: ColorManager.mainColor, width: 1.5.w)),
    //         ),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Image.asset('assets/images/num.png'),
    //           Text('رقم الاستطلاع: 5'),
    //           Image.asset('assets/images/clock.png'),
    //           Text('وقت النشر: 2:30م'),
    //           Image.asset('assets/images/date.png'),
    //           Text('تاريخ الانتهاء: 3-8-2022'),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      // padding: EdgeInsets.all(5),
      padding: EdgeInsets.only(
          right: AppSize.s8.w,
          left: AppSize.s8.w,
          top: AppSize.s12.h,
          bottom: AppSize.s8.h),
      margin: EdgeInsets.symmetric(vertical: AppSize.s4.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10.r),
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(0.48),
                blurRadius: AppSize.s4.r,
                offset: const Offset(0, 0))
          ],
          color: ColorManager.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'فتح باب التسجيل للتطوع في المجال الزراعي',
                style: context.textTheme.titleMedium,
              ),
              Icon(
                Icons.more_horiz,
                color: iconColor,
              )
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Icon(Icons.calendar_month_outlined),
          //     SizedBox(
          //       width: 5.w,
          //     ),
          //     Text(
          //       'قبل 5 دقائق ',
          //       style: TextStyle(
          //         color: ColorManager.mainColor,
          //         fontSize: FontSize.s18,
          //       ),
          //     ),
          //   ],
          // ),
          Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد',
            maxLines: 2,
            style: context.textTheme.bodyMedium,
          ),
          SizedBox(
            height: AppSize.s9.h,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const PollsDetails());
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
              child: Text(
                AppStrings.applyPolls,
                style: context.textTheme.displaySmall,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(ImageAssets.requsetIcon),
              Text(
                'رقم الاستطلاع: 5',
                style: context.textTheme.bodySmall,
              ),
              SvgPicture.asset(ImageAssets.clockIcon),
              Text(
                'وقت النشر: 2:30م',
                style: context.textTheme.bodySmall,
              ),
              SvgPicture.asset(ImageAssets.calendarDateIcon),
              Text(
                'تاريخ الانتهاء: 3-8-2022',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
