import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/services/persentation/widget/services_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../controller/all_services_controller.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: ContainerBody(
          widget: GetBuilder<AllServicesController>(
              id: 'services',
              assignId: true,
              builder: (logic) {
                if (logic.isLoading.isFalse) {
                  return Center(
                    child: SpinKitFadingCube(
                      size: AppSize.s50.h,
                      color: ColorManager.mainColor,
                    ),
                  );
                }
                return GridView.builder(
                  // padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  // shrinkWrap: true,
                  itemCount: logic.allServicesModel!.data!.length,
                  padding: EdgeInsets.only(
                      top: AppSize.s40.h,
                      right: AppSize.s20.w,
                      left: AppSize.s20.w),
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h),
                  itemBuilder: (context, index) {
                    return ServicesCard(
                      // cardColor: (index == 0 || index % 2 == 0)
                      //     ? ColorManager.white
                      //     : ColorManager.mainColor,
                      servicesModel: logic.allServicesModel!.data![index],
                      // imageColor: (index == 0 || index % 2 == 0)
                      //     ? ColorManager.mainColor
                      //     : ColorManager.white,
                      // textColor: (index == 0 || index % 2 == 0)
                      //     ? ColorManager.mainColor
                      //     : ColorManager.white,
                    );
                  },
                );
              }),
        ));
  }
}
