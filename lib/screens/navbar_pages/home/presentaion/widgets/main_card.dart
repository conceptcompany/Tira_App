import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/routes/app_routes.dart';

class MainCard extends StatelessWidget {
  Category category;

  MainCard({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(category.getPage),
      child: Container(
        // width: 125.w,
        // height: 125.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: ColorManager.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.r, offset: Offset(0, 3.h), color: Colors.grey),
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 70.h, child: Image.asset(category.image)),
          SizedBox(
              child: Text(category.title,
                  style: TextStyle(
                      color: ColorManager.mainColor, fontSize: 16.sp)))
        ]),
      ),
    );
  }
}

class Category {
  final String image;
  final String title;
  final String getPage;

  Category(this.image, this.title, this.getPage);
}

List<Category> categories = <Category>[
  Category(
    'assets/images/news.png',
    'الأخبار',
    AppRoutes.news,
  ),
  Category(
    'assets/images/video.png',
    'الاستمارات',
    AppRoutes.formScreen,
  ),
  Category('assets/images/polls.png', 'الاستطلاعات', AppRoutes.surveysScreen),
  Category('assets/images/sections.png', 'الأقسام', AppRoutes.sectionsScreen),
  Category('assets/images/fff.png', 'الشكاوي', AppRoutes.complaintsScreen),
  Category(
    'assets/images/car.png',
    'خدمة المواطن',
    AppRoutes.citizenServiceScreen,
  ),
  Category(
      'assets/images/calender.png', 'الأجندة الحكومية', AppRoutes.agendaScreen),
  Category('assets/images/warning-calendar.png', 'الإندار والطوارئ',
      AppRoutes.emergencyScreen),
  Category('assets/images/qqq.png', 'إعرض أفكارك', AppRoutes.showIdeasScreen),
];
