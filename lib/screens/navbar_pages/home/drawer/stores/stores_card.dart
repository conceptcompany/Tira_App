import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/resources/color_manager.dart';

class StoresCard extends StatelessWidget {
  const StoresCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
      padding: const EdgeInsets.all(10),
      width: 376.w,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/ddd.png',
              fit: BoxFit.fitWidth,
            ),
            Row(
              children: [
                Text(
                  'مول الأندلس',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: ColorManager.mainColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              height: 37.h,
              width: 205.w,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(217, 88, 59, 0.18),
                  border: Border.all(color: ColorManager.mainColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/mapicon.png'),
                  Text(
                    'الحصول على موقع المول',
                    style: TextStyle(color: Colors.red, fontSize: 18.sp),
                  )
                ],
              ),
            ),
            Text(
              'استخدم كود QR للحصول على كوبون خصم من المول',
              style: TextStyle(fontSize: 18.sp),
            ),
            GestureDetector(
              onTap: () => Get.defaultDialog(
                  title: 'مول الأندلس',
                  titleStyle:
                      TextStyle(color: ColorManager.mainColor, fontSize: 20.sp),
                  content: Image.asset('assets/images/barcode.png')),
              child: Row(
                children: [
                  Text(
                    'معاينة الكود',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  Image.asset(
                    'assets/images/barcode.png',
                    height: 27.68.h,
                    width: 27.68.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            )
          ],
        ),
      ),
    );
  }
}
