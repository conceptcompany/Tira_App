import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/emergancy/emeregency_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text(AppStrings.emergency),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          color: ColorManager.mainColor,
          child: ContainerBody(
              padding: EdgeInsets.only(
                  top: AppSize.s60.h,
                  right: AppSize.s26.w,
                  left: AppSize.s26.w),
              widget: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          cards.length,
                          (index) =>
                              EmergencyCards(emergancyCard: cards[index]),
                        )),
                    Container(
                      width: 250.w,
                      height: 50.h,
                      margin: EdgeInsets.only(top: 90.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: ColorManager.mainColor,
                          boxShadow: [
                            BoxShadow(
                                color: ColorManager.mainColor, blurRadius: 10.r)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/position.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'قم بإيجادي',
                            style: TextStyle(
                                fontSize: 22.sp, color: ColorManager.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
