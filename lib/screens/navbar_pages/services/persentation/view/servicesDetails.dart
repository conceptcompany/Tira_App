import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/services/persentation/widget/services_details_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../controller/services_details_controller.dart';

class ServicesDetails extends GetView<ServicesDetailsController> {
  const ServicesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: Text(controller.details[1].toString()),
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ContainerBody(
          padding: EdgeInsets.only(
              top: AppSize.s17.h, right: AppSize.s18.w, left: AppSize.s18.w),
          widget: GetBuilder<ServicesDetailsController>(
              id: 'serviceDetails',
              builder: (logic) {
                if (logic.isLoading.isFalse) {
                  return Center(
                    child: SpinKitFadingCube(
                      size: AppSize.s50.h,
                      color: ColorManager.mainColor,
                    ),
                  );
                } else if (logic.servicesDetailsModel!.data!.isEmpty) {
                  return Center(
                    child: Text(
                      'لا يوجد نماذج متاحة في هذا القسم حالياً',
                      style: context.theme.primaryTextTheme.bodyLarge,
                    ),
                  );
                }
                return CustomScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        height: AppSize.s50.h,
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(AppSize.s25.r)),
                            border: Border.all(
                                color: ColorManager.mainColor,
                                width: AppSize.s1.w)),
                        child: TabBar(
                            controller: logic.controller, tabs: logic.myTabs),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: AppSize.s10.h,
                      ),
                    ),
                    SliverFillRemaining(
                        hasScrollBody: true,
                        fillOverscroll: true,
                        child: TabBarView(
                            controller: logic.controller,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemCount:
                                      logic.servicesDetailsModel!.data!.length,
                                  itemBuilder: (context, index) {
                                    return ServicesDetailsCard(
                                      servicesDetails: logic
                                          .servicesDetailsModel!.data![index],
                                    );
                                  },
                                ),
                              ),
                              Container(
                                child: const Center(
                                  child: Text('Display Tab 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                child: const Center(
                                  child: Text('Display Tab 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ])),
                  ],
                );
              }),
        ));
  }
}
