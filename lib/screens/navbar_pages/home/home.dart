import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call.dart';
import 'package:tira_app/screens/navbar_pages/home/presentaion/widgets/main_card.dart';
import 'package:tira_app/widgets/call_container.dart';

import '../../../../core/resources/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          color: ColorManager.mainColor,
          child: Container(
            decoration: BoxDecoration(
                color: ColorManager.background,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(220.r))),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => const CallScreen());
                    },
                    child: const CallContainer()),
                Padding(
                  padding: EdgeInsets.only(
                      top: AppSize.s23.h, left: 30.w, right: 30.w),
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 11.h,
                      crossAxisSpacing: 7.w,
                      children: List.generate(categories.length, (index) {
                        return MainCard(
                          category: categories[index],
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
