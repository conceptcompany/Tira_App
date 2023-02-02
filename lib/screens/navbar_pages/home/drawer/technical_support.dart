import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

class TechnicalSupport extends StatelessWidget {
  const TechnicalSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'الدعم الفني',
                actions: GestureDetector(
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () => Get.back(),
                ),
                leading: const SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Text(
                        'يمكنكم التواصل مع الدعم الفني و الإبلاغ عن المشكلة التي تواجهك'),
                    FormWidget(label: 'اسم المرسل', hint: 'اسم المرسل'),
                    FormWidget(label: 'عنوان الرسالة', hint: 'عنوان الرسالة'),
                    FormWidget(
                      label: '...نص الرسالة',
                      hint: '',
                      lines: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: AuthButton(
                        onTap: () {},
                        buttonText: 'إرسال',
                      ),
                    )
                  ],
                ),
              ))
            ])));
  }
}
