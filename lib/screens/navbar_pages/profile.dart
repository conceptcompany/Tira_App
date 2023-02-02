import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/assets_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

import '../../../../core/resources/color_manager.dart';
import '../../core/resources/strings_manager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: Text(
            AppStrings.profile,
          ),
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: ContainerBody(
              widget: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Center(
                          child: Container(
                        height: AppSize.s140.h,
                        width: AppSize.s140.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ColorManager.mainColor,
                              width: AppSize.s2.w),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/peerson.png',
                              ),
                              fit: BoxFit.contain),
                        ),
                        alignment: Alignment.topRight,
                        child: Container(
                            padding: EdgeInsets.all(AppSize.s5.w),
                            margin: EdgeInsets.only(
                                right: AppSize.s8.w, top: AppSize.s8.h),
                            height: AppSize.s30.h,
                            width: AppSize.s30.w,
                            decoration: BoxDecoration(
                              color: ColorManager.mainColor,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(ImageAssets.editIcon)),
                      )),
                      FormWidget(label: 'الاسم الأول', hint: 'الاسم الأول'),
                      FormWidget(label: 'اسم العائلة', hint: 'اسم العائلة'),
                      FormWidget(label: 'تاريخ الميلاد', hint: 'تاريخ الميلاد'),
                      FormWidget(
                          label: 'البريد الإلكتروني',
                          hint: 'البريد الإلكتروني'),
                      FormWidget(label: 'رقم الهاتف', hint: 'رقم الهاتف'),
                      FormWidget(label: 'رقم الهوية', hint: 'رقم الهوية'),
                      FormWidget(label: 'العنوان', hint: 'العنوان'),
                      FormWidget(label: '', hint: 'رقم المبنى'),
                      Container(
                        margin: const EdgeInsets.all(20),
                        width: 250.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            color: background,
                            border: Border.all(
                                color: ColorManager.mainColor, width: 2.w),
                            boxShadow: [
                              BoxShadow(
                                  color: ColorManager.mainColor,
                                  blurRadius: 10.r)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/postionw.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'قم بإيجادي',
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  color: ColorManager.mainColor),
                            ),
                          ],
                        ),
                      ),
                      AuthButton(onTap: () {}, buttonText: 'تحديث البيانات')
                    ],
                  ))),
        ));
  }
}
