import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/services/persentation/widget/services_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/routes/app_routes.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: ContainerBody(
          widget: GridView.builder(
            // padding: EdgeInsets.only(left: 20.w, right: 20.w),
            // shrinkWrap: true,
            itemCount: 19,
            padding: EdgeInsets.only(
                top: AppSize.s40.h, right: AppSize.s20.w, left: AppSize.s20.w),
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.servicesDetails);
                },
                child: ServicesCard(
                  cardColor: (index == 0 || index % 2 == 0)
                      ? ColorManager.white
                      : ColorManager.mainColor,
                  imageColor: (index == 0 || index % 2 == 0)
                      ? ColorManager.mainColor
                      : ColorManager.white,
                  textColor: (index == 0 || index % 2 == 0)
                      ? ColorManager.mainColor
                      : ColorManager.white,
                ),
              );
            },
          ),
        ));
  }
}
