import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../widgets/appbar.dart';
import '../../../../widgets/container_body.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        AppBarr(
          title: 'تقرير جديد',
          actions: GestureDetector(
            child: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.back(),
          ),
          leading: const SizedBox(),
        ),
        ContainerBody(
            widget: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'نوع  التقرير',
                style: TextStyle(color: secondColor),
              ),
              Container(
                height: 83.h,
                // width: 373.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: ColorManager.white,
                    border:
                        Border.all(color: ColorManager.mainColor, width: 1.w)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/animals.png'),
                    Text(
                      'الأمن و السلامة -  عنف الحيوانات',
                      style: TextStyle(
                          color: ColorManager.mainColor, fontSize: 22.sp),
                    ),
                  ],
                ),
              ),
              FormWidget(label: 'عنوان التقرير', hint: 'عنوان التقرير'),
              FormWidget(
                label: 'وصف التقرير',
                hint: '',
                lines: 4,
              ),
              const UploadWidget(
                  label: 'المرفقات',
                  image: 'assets/images/upload.png',
                  imageLabel: 'أرفق صور أو فيديو'),
              SizedBox(
                height: 30.h,
              ),
              Center(child: AuthButton(onTap: () {}, buttonText: 'إرسال'))
            ],
          ),
        ))
      ]),
    ));
  }
}
