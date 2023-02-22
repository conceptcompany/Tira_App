import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/screens/auth/presentation/widget/auth_container.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/topBar.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class SendPhoneScreen extends StatelessWidget {
  SendPhoneScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (logic) {
      return CustomTabBarWidget(
          widget: AuthContainer(
              padding: EdgeInsets.only(
                  left: 33.w, right: 33.w, bottom: 115.h, top: 87.h),
              margin: EdgeInsets.only(top: AppSize.s10.h),
              widget: Form(
                autovalidateMode: AutovalidateMode.disabled,
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      AppStrings.enterPhoneNumber,
                      style: getRegularStyle(
                          color: textFontColor, fontSize: FontSize.s18.sp),
                    ),
                    CustomTextField(
                      controller: logic.sendPhoneController,
                      focusedBorderColor: hintColor,
                      enabledBorderColor: hintColor,
                      hintText: AppStrings.phoneNumber,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == '') {
                          return "قم بإدخال رقم الهاتف";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: AppSize.s79.h,
                    ),
                    AuthButton(
                      buttonText: AppStrings.send,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          logic.sendSms(logic.sendPhoneController.text);
                        }
                      },
                    ),
                  ],
                ),
              )));
    });
  }
}
