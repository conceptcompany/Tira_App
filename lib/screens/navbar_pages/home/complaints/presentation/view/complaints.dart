import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.complaints,
        ),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: ContainerBody(
          widget: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ToggleSwitch(
                  minHeight: 45.h,
                  minWidth: 135.w,
                  radiusStyle: true,
                  totalSwitches: 3,
                  cornerRadius: 25.r,
                  activeBgColor: const [ColorManager.mainColor],
                  inactiveBgColor: ColorManager.white,
                  borderColor: const [ColorManager.mainColor],
                  borderWidth: 0.5.w,
                  initialLabelIndex: 0,
                  labels: const [
                    'شكوى عاجلة',
                    'تقرير عن مشكلة',
                    'اقتراح جديد '
                  ],
                  fontSize: 18.sp,
                  activeFgColor: ColorManager.white,
                  inactiveFgColor: ColorManager.mainColor,
                  onToggle: (index) {},
                ),
                FormWidget(label: 'عنوان الشكوى', hint: 'عنوان الشكوى'),
                FormWidget(
                  label: 'تفاصيل الشكوى',
                  hint: '',
                  lines: 4,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                const UploadWidget(
                    label: 'المرفقات',
                    image: 'assets/images/upload.png',
                    imageLabel: 'قم بإرفاق تقارير أو صور توضح الشكوى'),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: AuthButton(
                    onTap: () {},
                    buttonText: 'إرسال',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
