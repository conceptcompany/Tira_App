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
import '../../../../core/routes/app_routes.dart';
import '../../../../widgets/custom_text_field.dart';

class SendPhoneScreen extends StatelessWidget {
  const SendPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTabBarWidget(
        widget: AuthContainer(
            padding: EdgeInsets.only(
                left: 33.w, right: 33.w, bottom: 115.h, top: 87.h),
            margin: EdgeInsets.only(top: AppSize.s10.h),
            widget: Column(
              children: [
                Text(
                  AppStrings.enterPhoneNumber,
                  style: getRegularStyle(
                      color: textFontColor, fontSize: FontSize.s18.sp),
                ),
                CustomTextField(
                  focusedBorderColor: hintColor,
                  enabledBorderColor: hintColor,
                  hintText: AppStrings.phoneNumber,
                ),
                SizedBox(
                  height: AppSize.s79.h,
                ),
                AuthButton(
                  buttonText: AppStrings.send,
                  onTap: () {
                    Get.toNamed(AppRoutes.check2);
                  },
                ),
              ],
            )));
  }
}
