import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'تغيير كلمة المرور',
                actions: GestureDetector(
                  child: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.back(),
                ),
                leading: const SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                      margin:
                          EdgeInsets.only(right: 27.w, left: 27.w, top: 145.h),
                      child: Column(children: [
                        FormWidget(
                            label: 'كلمة المرور الحالية ',
                            hint: 'كلمة المرور الحالية '),
                        FormWidget(
                            label: 'كلمة المرور الجديدة ',
                            hint: 'كلمة المرور الجديدة '),
                        FormWidget(
                            label: 'تأكيد كلمة المرور الجديدة ',
                            hint: 'تأكيد كلمة المرور الجديدة '),
                        Padding(
                          padding: const EdgeInsets.all(50),
                          child: AuthButton(
                            onTap: () {},
                            buttonText: 'تأكيد',
                          ),
                        )
                      ])))
            ])));
  }
}
