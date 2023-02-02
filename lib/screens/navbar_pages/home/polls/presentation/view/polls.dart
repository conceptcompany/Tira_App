import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/polls/presentation/widget/polls_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class Polls extends StatelessWidget {
  const Polls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.polls,
        ),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ContainerBody(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.s25.w, vertical: AppSize.s20.h),
        widget: ListView(
          children: [
            SizedBox(
              height: AppSize.s50.h,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: ColorManager.white,
                    hintText: AppStrings.searchinPolls,
                    filled: true,
                    isDense: true,
                    suffixIcon: Icon(
                      Icons.search,
                      size: AppSize.s20.h,
                    ),
                    contentPadding: EdgeInsets.only(
                        top: AppSize.s12.h,
                        bottom: AppSize.s12.h,
                        right: AppSize.s20.w),
                    hintStyle: TextStyle(
                        color: HexColor('#FFB1A0'), fontSize: FontSize.s17.sp),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s26.r),
                        borderSide: BorderSide(
                            color: ColorManager.mainColor,
                            width: AppSize.s1.w)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s26.r),
                        borderSide: BorderSide(
                            color: ColorManager.mainColor,
                            width: AppSize.s1.w))),
              ),
            ),
            SizedBox(
              height: AppSize.s10.h,
            ),
            ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return const PollsCard();
                }))
          ],
        ),
      ),
    );
  }
}
