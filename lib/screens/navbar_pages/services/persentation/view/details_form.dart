import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

import '../../../../../../core/resources/color_manager.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          AppBarr(
            title: 'الصحة  و التعليم',
            actions: GestureDetector(
              child: const Icon(Icons.arrow_forward),
              onTap: () => Get.back(),
            ),
            leading: const SizedBox(),
          ),
          ContainerBody(
              widget: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تسجيل المواليد الجدد لشهر سبتمبر',
                  style: TextStyle(fontSize: 22.sp),
                ),
                FormWidget(
                  label: 'اسم الأم',
                  hint: 'اسم الأم',
                ),
                FormWidget(
                  label: 'مكان الولادة',
                  hint: 'مكان الولادة',
                ),
                FormWidget(label: 'اسم المولود', hint: 'اسم المولود'),
                FormWidget(label: 'تاريخ الولادة', hint: 'تاريخ الولادة'),
                FormWidget(
                  label: 'ملاحظات أخرى',
                  hint: 'أضف ملاحظات أخرى',
                  lines: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 135.h,
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      border: Border.all(
                        color: ColorManager.mainColor,
                      ),
                      borderRadius: BorderRadius.circular(25.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/file.png'),
                      Text(
                        'ارفاق ملف',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: AuthButton(onTap: () {}, buttonText: 'تقدم الآن'),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
