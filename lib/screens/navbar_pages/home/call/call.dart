import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      AppBarr(
        title: 'إتصال بالموكيد',
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
          widget: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                width: 250.w,
                height: 55.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: ColorManager.mainColor,
                    boxShadow: [
                      BoxShadow(color: ColorManager.mainColor, blurRadius: 10.r)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/phone.png',
                      width: 25.w,
                      height: 25.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      'إتصال بالموكيد',
                      style: TextStyle(
                          fontSize: FontSize.s22, color: ColorManager.white),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: ColorManager.mainColor,
              height: 1.h,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, right: 15.w),
              child: const Text(
                'التقارير \n الرجاء تحديد نوع التقرير',
                style: TextStyle(
                    fontSize: FontSize.s20,
                    fontWeight: FontWeightManager.medium),
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(reportsCard.length,
                  (index) => CallCard(repostsCard: reportsCard[index])),
            )
          ],
        ),
      ))
    ]));
  }
}
