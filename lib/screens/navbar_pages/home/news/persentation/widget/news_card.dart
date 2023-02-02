import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/styles_manager.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSize.s4.h),
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s10.r)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Image.asset('assets/images/image.png')),
          SizedBox(
            width: AppSize.s9.w,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('رصف طريق الطيرة الرئيسي',
                    style: getSemiBoldStyle(
                        color: black, fontSize: FontSize.s18.sp)),
                // Flexible(
                ReadMoreText(
                    'الموقع الرسمي لبلدية الطيرة, يمكنكم من التواصل معنا في ل أي وقت و الاستفادة ...من جميع خدماتنا لبناء اتقلت نقفلنتت',
                    numLines: 2,
                    style: getRegularStyle(
                        color: textFont1Color, fontSize: FontSize.s14.sp),
                    readMoreText: 'اقرأ المزيد',
                    readLessText: 'اقرأ أقل'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
