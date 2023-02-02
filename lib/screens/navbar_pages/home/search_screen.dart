import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../widgets/rounded_custom_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: Text(
            AppStrings.search,
          ),
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ContainerBody(
            padding: EdgeInsets.symmetric(
                horizontal: AppSize.s30.w, vertical: AppSize.s15.h),
            widget: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: AppSize.s15.h),
                  height: AppSize.s50.h,
                  child: RoundedCustomTextField(
                      hintText: AppStrings.search,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            ImageAssets.filterIcon,
                            height: AppSize.s20.h,
                            width: AppSize.s20.w,
                            color: ColorManager.unselectedIconColor,
                          )),
                      hintStyle: getRegularStyle(
                          color: ColorManager.hintStyleColor,
                          fontSize: FontSize.s17.sp)),
                ),
                // Container(
                //   height: AppSize.s208.h,
                //   width: AppSize.s208.w,
                //   decoration: BoxDecoration(
                //     color: Color(0xffD9583B).withOpacity(0.5),
                //   ),
                //   alignment: Alignment.center,
                //   child: SvgPicture.asset(
                //     ImageAssets.searchIcon,
                //     height: 208,
                //     // width: 200.w,
                //     fit: BoxFit.contain,
                //     // color: ColorManager.white,
                //   ),
                // ),
                SizedBox(
                  height: AppSize.s100.h,
                ),
                Image.asset(
                  'assets/images/se.png',
                ),
                const Text(
                  'آسف، لا يوجد أي نتائج ',
                  style: TextStyle(fontSize: FontSize.s18),
                )
              ],
            )));
  }
}
