import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/controllers/settings_controller.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/resources/color_manager.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'الإعدادات',
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
                margin: EdgeInsets.only(top: 46.h, right: 15.w, left: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اللغة',
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorManager.mainColor),
                    ),
                    ToggleSwitch(
                      minHeight: 45.h,
                      minWidth: 135.w,
                      radiusStyle: true,
                      totalSwitches: 3,
                      cornerRadius: 25.r,
                      activeBgColor: const [ColorManager.mainColor],
                      inactiveBgColor: ColorManager.white,
                      borderColor: const [ColorManager.mainColor],
                      borderWidth: 0.5.w,
                      initialLabelIndex: 0,
                      labels: const ['العربية', 'English', 'עברית '],
                      fontSize: 18.sp,
                      activeFgColor: ColorManager.white,
                      inactiveFgColor: ColorManager.mainColor,
                      onToggle: (index) {},
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'إشعارات التطبيق',
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorManager.mainColor),
                    ),
                    ToggleSwitch(
                      minHeight: 45.h,
                      minWidth: 135.w,
                      radiusStyle: true,
                      totalSwitches: 2,
                      cornerRadius: 25.r,
                      activeBgColor: const [ColorManager.mainColor],
                      inactiveBgColor: ColorManager.white,
                      borderColor: const [ColorManager.mainColor],
                      borderWidth: 0.5.w,
                      initialLabelIndex: 0,
                      labels: const [
                        'تشغيل',
                        'كتم',
                      ],
                      fontSize: 18.sp,
                      activeFgColor: ColorManager.white,
                      inactiveFgColor: ColorManager.mainColor,
                      onToggle: (index) {},
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'حجم الخط',
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorManager.mainColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Aa',
                          style: TextStyle(
                              fontSize: 20.sp, color: ColorManager.mainColor),
                        ),
                        Obx((() => SizedBox(
                              width: 330.w,
                              child: Slider(
                                  activeColor: black,
                                  inactiveColor: Colors.black45,
                                  value: settingsController.sliderValue.value,
                                  max: 100,
                                  divisions: 5,
                                  onChanged: (double d) {
                                    settingsController.sliderValue.value = d;
                                  }),
                            ))),
                        Text(
                          'Aa',
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: ColorManager.mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'تباين الألوان',
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorManager.mainColor),
                    ),
                    ToggleSwitch(
                      minHeight: 45.h,
                      minWidth: 135.w,
                      radiusStyle: true,
                      totalSwitches: 3,
                      cornerRadius: 25.r,
                      activeBgColor: const [ColorManager.mainColor],
                      inactiveBgColor: ColorManager.white,
                      borderColor: const [ColorManager.mainColor],
                      borderWidth: 0.5.w,
                      initialLabelIndex: 0,
                      labels: const ['طبيعي', 'منعكس', 'أحادي اللون '],
                      fontSize: 18.sp,
                      activeFgColor: ColorManager.white,
                      inactiveFgColor: ColorManager.mainColor,
                      onToggle: (index) {},
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 146.h, left: 76.w, right: 76.w),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#FF2815'),
                            shape: const StadiumBorder(),
                            fixedSize: Size(276.w, 56.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'حذف الحساب',
                            style: TextStyle(fontSize: 22.sp),
                          )),
                    )
                  ],
                ),
              )),
            ])));
  }
}
