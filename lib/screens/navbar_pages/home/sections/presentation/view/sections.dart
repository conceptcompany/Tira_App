import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/sections/presentation/widgets/section_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/values_manager.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: const Text(
            AppStrings.sections,
          ),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: ContainerBody(
              widget: ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: AppSize.s30.h,
                      left: AppSize.s20.w,
                      right: AppSize.s20.w),
                  itemBuilder: (context, index) {
                    return const SectionCard();
                  })),
        ));
  }
}
