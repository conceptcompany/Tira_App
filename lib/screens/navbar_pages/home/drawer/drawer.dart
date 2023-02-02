import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/assets_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/change_pass.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/privacy_policy.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/settings.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/stores/stores.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/technical_support.dart';
import 'package:tira_app/screens/navbar_pages/profile.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/divider_widget.dart';

import '../../../../core/resources/color_manager.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
                height: 250.h,
                decoration: const BoxDecoration(color: ColorManager.mainColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                              color: const Color.fromARGB(121, 236, 179, 179),
                              width: AppSize.s5.w)),
                      child: SizedBox(
                        height: AppSize.s90.h,
                        width: AppSize.s90.w,
                        child: Image.asset(
                          'assets/images/peerson.png',
                        ),
                      ),
                    ),
                    Text(
                      'عبد الرحمن محمد الطيراوي',
                      style: context.theme.primaryTextTheme.bodyMedium,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.white,
                            padding:
                                EdgeInsets.symmetric(horizontal: AppSize.s30.w),
                            fixedSize: Size(double.infinity, AppSize.s35.h)),
                        onPressed: () {
                          Get.to(() => const Profile());
                        },
                        child: Text('الملف الشخصي',
                            style: context.theme.primaryTextTheme.bodySmall))
                  ],
                )),
            ListDrawerWidget(
              image: ImageAssets.dollarIcon,
              title: 'العطاءات',
              onPressed: () {
                // Get.to((() => ));
              },
            ),
            ListDrawerWidget(
                image: ImageAssets.shopIcon,
                title: 'المحلات التجارية',
                onPressed: () {
                  Get.to(() => const Stores());
                }),
            ListDrawerWidget(
                image: ImageAssets.supportIcon,
                title: 'الدعم الفني',
                onPressed: () {
                  Get.to(() => const TechnicalSupport());
                }),
            ListDrawerWidget(
                image: ImageAssets.passwordIcon,
                title: 'تغيير كلمة المرور',
                onPressed: () {
                  Get.to(() => const ChangePass());
                }),
            ListDrawerWidget(
                image: ImageAssets.privacyIcon,
                title: 'سياسة الخصوصية',
                onPressed: () {
                  Get.to(() => const PrivacyPolicy());
                }),
            ListDrawerWidget(
                image: ImageAssets.settingsIcon,
                title: 'الإعدادات',
                onPressed: () {
                  Get.to(() => const Settings());
                }),
            Padding(
              padding: const EdgeInsets.all(30),
              child: AuthButton(
                onTap: () {},
                buttonText: 'تسجيل الخروج',
              ),
            )
          ],
        ),
      ),
    );
  }
}
