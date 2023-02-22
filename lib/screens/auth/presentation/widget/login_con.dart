import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/widgets/button.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class LoginCon extends StatelessWidget {
  LoginCon({
    super.key,
    required this.authController,
  });
  final AuthController authController;
  final _formKeylogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.h, right: 10.w, left: 10.w),
      child: Form(
        autovalidateMode: AutovalidateMode.disabled,
        key: _formKeylogin,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              hintText: AppStrings.phoneNum,
              keyboardType: TextInputType.phone,
              enabledBorderColor: hintColor,
              focusedBorderColor: hintColor,
              controller: authController.loginPhoneController,
              validator: (value) => authController.validation(value),
            ),
            CustomTextField(
              controller: authController.loginPasswordController,
              hintText: AppStrings.passHint,
              keyboardType: TextInputType.text,
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
                if (value == '') {
                  print(value);
                  return "قم بإدخال كلمة المرور";
                } else {
                  print(value);
                  return null;
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.sendPhone);
                  },
                  child: Text(
                    AppStrings.forgetPass,
                    style: getRegularStyle(
                        color: hintColor,
                        fontSize: FontSize.s14.sp,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSize.s30.h),
            AuthButton(
                onTap: () {
                  print(_formKeylogin.currentState!.validate());
                  if (_formKeylogin.currentState!.validate()) {
                    authController.login(
                      authController.loginPhoneController.text,
                      authController.loginPasswordController.text,
                    );
                  } //
                },
                buttonText: AppStrings.loginButton),
            SizedBox(
              height: AppSize.s35.h,
            ),
            Text(
              AppStrings.or,
              style:
                  getSemiBoldStyle(color: hintColor, fontSize: FontSize.s15.sp),
            ),
            SizedBox(
              height: AppSize.s30.h,
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
