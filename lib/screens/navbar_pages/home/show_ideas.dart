import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/strings_manager.dart';

class ShowIdeas extends StatelessWidget {
  const ShowIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text(AppStrings.showIdeas),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: ContainerBody(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'إعرض أفكارك التنموية و البناءة للمساعدة في رقي و تطور المجتمع '),
                  FormWidget(label: 'عنوان الفكرة', hint: 'عنوان الفكرة'),
                  FormWidget(
                    label: 'الميزانية المتوقعة للتنفيذ',
                    hint: 'مثال: 20000 شيكل',
                    // icon: Icon(
                    //   Icons.ac_unit_sharp,
                    //   size: 24,
                    //   semanticLabel: '₪',
                    // ),
                  ),
                  FormWidget(
                    label: 'شرح مختصر عن الفكرة',
                    hint: '',
                    lines: 4,
                  ),
                  const UploadWidget(
                      label: 'المرفقات',
                      image: 'assets/images/upload.png',
                      imageLabel:
                          'أرفق عرض تقديمي أو ملفات تشرح الفكرة بالتفصيل'),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                      child:
                          AuthButton(onTap: () {}, buttonText: 'تقديم الفكرة'))
                ],
              )),
        ));
  }
}
