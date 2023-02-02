import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/widgets/button.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class RegisterCon extends StatelessWidget {
  RegisterCon({super.key, required this.authController});

  final AuthController authController;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: AppSize.s8.h, right: 5.w, left: 5.w),
      child: Form(
        autovalidateMode: AutovalidateMode.disabled,
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: authController.registerPhoneController,
              hintText: AppStrings.phoneNumber,
              keyboardType: TextInputType.phone,
              enabledBorderColor: hintColor,
              focusedBorderColor: hintColor,
              validator: (value) {
                if (GetUtils.isNull(value)) {
                  return "قم بإدخال رقم الهاتف";
                } else {
                  return null;
                }
              },
            ),
            CustomTextField(
              controller: authController.registerIdNumberController,
              hintText: AppStrings.personalNum,
              keyboardType: TextInputType.number,
              enabledBorderColor: hintColor,
              focusedBorderColor: hintColor,
              validator: (value) {
                if (GetUtils.isNull(value)) {
                  return "قم بإدخال رقم الهوية";
                } else {
                  return null;
                }
              },
            ),
            CustomTextField(
              controller: authController.registerEmailController,
              hintText: AppStrings.emailHint,
              keyboardType: TextInputType.emailAddress,
              enabledBorderColor: hintColor,
              focusedBorderColor: hintColor,
              validator: (value) {
                if (!GetUtils.isEmail(value!)) {
                  return "قم بإدخال ايميل صحيح";
                } else {
                  return null;
                }
              },
            ),
            CustomTextField(
              controller: authController.registerPasswordController,
              hintText: AppStrings.passHint,
              keyboardType: TextInputType.emailAddress,
              enabledBorderColor: hintColor,
              focusedBorderColor: hintColor,
              obscureText: !authController.showPass.value,
              suffixIcon: IconButton(
                onPressed: () {
                  authController.showPassword();
                },
                icon: Icon(
                  authController.showPass.value
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  color: hintColor,
                ),
              ),
              validator: (value) {
                if (GetUtils.isNull(value)) {
                  return "قم بإدخال كلمة المرور";
                } else {
                  return null;
                }
              },
            ),
            // TextField(
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: InputDecoration(
            //     hintText: AppStrings.emailHint,
            //     hintStyle: TextStyle(fontSize: FontSize.s16, color: secondColor),
            //   ),
            // ),
            Text(
              AppStrings.rules,
              style: getRegularStyle(
                  color: hintColor,
                  fontSize: FontSize.s14.sp,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10.h,
            ),
            AuthButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    authController.register(
                        authController.registerPhoneController.text,
                        authController.registerIdNumberController.text,
                        authController.registerEmailController.text,
                        authController.registerPasswordController.text);
                  } // Get.offNamed(AppRoutes.home);
                },
                buttonText: AppStrings.registerButton),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text(
                AppStrings.or,
                style: getSemiBoldStyle(
                    color: hintColor, fontSize: FontSize.s15.sp),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/facebook.png'),
                SizedBox(
                  width: AppSize.s44.w,
                ),
                Image.asset('assets/images/google.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
