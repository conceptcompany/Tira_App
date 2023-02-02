import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

import '../../../../../../core/resources/assets_manager.dart';
import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';

class CitizenService extends StatelessWidget {
  const CitizenService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(AppStrings.citizenService),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ContainerBody(
          widget: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Text(
            'يمكنكم التواصل مع خدمة العملاء عبر رسائل التطبيق أو بالاتصال على أرقامنا المدرجة في الأسفل ',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          FormWidget(label: 'عنوان الرسالة', hint: 'عنوان الرسالة'),
          const SizedBox(
            height: 10,
          ),
          FormWidget(
            label: 'نص الرسالة',
            hint: '',
            lines: 4,
          ),
          const SizedBox(
            height: 10,
          ),
          const UploadWidget(
              label: 'المرفقات',
              image: ImageAssets.upload,
              imageLabel: 'مرفقات '),
          const SizedBox(
            height: 50,
          ),
          AuthButton(onTap: () {}, buttonText: 'إرسال')
        ]),
      )),
    );
  }
}
