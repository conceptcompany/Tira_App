import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:tira_app/core/resources/color_manager.dart';
import 'package:tira_app/screens/auth/presentation/widget/auth_container.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/topBar.dart';

import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTabBarWidget(
        widget: AuthContainer(
      padding: EdgeInsets.only(top: AppSize.s87.h, bottom: AppSize.s44.h),
      margin: EdgeInsets.only(top: AppSize.s10.h),
      widget: Column(
        children: [
          const Text(
            AppStrings.enterCode,
            style: TextStyle(fontSize: FontSize.s18),
          ),
          SizedBox(
            height: AppSize.s60.h,
          ),
          const Pinput(
            length: 5,
          ),
          SizedBox(
            height: AppSize.s60.h,
          ),
          AuthButton(
            buttonText: AppStrings.check,
            onTap: () {},
          ),
          SizedBox(
            height: AppSize.s40.h,
          ),
          RichText(
              text: TextSpan(
                  text: AppStrings.didntreceive,
                  style: getRegularStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s18.sp),
                  children: [
                TextSpan(
                  text: AppStrings.retrySend,
                  style: getRegularStyle(
                      color: ColorManager.mainColor,
                      fontSize: FontSize.s18.sp,
                      decoration: TextDecoration.underline),
                )
              ]))
          // GestureDetector(
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 35.0.h),
          //     child: Text(
          //       'لم يصلك رمز التحقق؟ أعادة الإرسال',
          //       style: TextStyle(fontSize: FontSize.s18, color: ColorManager.mainColor),
          //     ),
          //   ),
          //   onTap: () {
          //     print('RRRR');
          //   },
          // ),
        ],
      ),
    ));
  }
}
