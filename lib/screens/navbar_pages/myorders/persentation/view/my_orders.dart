import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/myorders/persentation/widgets/myorders_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../controller/my_orders_controller.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    //    final navBarController = Get.put(NavBarController());
    // navBarController.currentTab.value = 4;
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: ContainerBody(
          padding: EdgeInsets.only(
              top: AppSize.s17.h, right: AppSize.s18.w, left: AppSize.s18.w),
          widget: GetBuilder<MyOrdersController>(
              id: 'myOrder',
              builder: (logic) {
                if (logic.isLoading.isFalse) {
                  return Center(
                    child: SpinKitFadingCube(
                      size: AppSize.s50.h,
                      color: ColorManager.mainColor,
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
                              logic.myOrderModelNew!.data!.isEmpty
                                  ? Center(
                                      child: Text(
                                        'لا يوجد طلبات جديدة حاليا',
                                        style: context
                                            .theme.primaryTextTheme.bodyLarge,
                                      ),
                                    )
                                  : ListView.builder(
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.only(
                                          bottom: AppSize.s20.h),
                                      itemCount:
                                          logic.myOrderModelNew!.data!.length,
                                      itemBuilder: (context, index) {
                                        return OrdersCard(
                                          myOrder: logic
                                              .myOrderModelNew!.data![index],
                                        );
                                      },
                                    ),
                              logic.myOrderModelComplete!.data!.isEmpty
                                  ? Center(
                                      child: Text(
                                        'لا يوجد طلبات مكتملة حاليا',
                                        style: context
                                            .theme.primaryTextTheme.bodyLarge,
                                      ),
                                    )
                                  : ListView.builder(
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.only(
                                          bottom: AppSize.s20.h),
                                      itemCount: logic
                                          .myOrderModelComplete!.data!.length,
                                      itemBuilder: (context, index) {
                                        return OrdersCard(
                                          myOrder: logic.myOrderModelComplete!
                                              .data![index],
                                        );
                                      },
                                    ),
                            ])),
                  ],
                );
              }),
        ));
  }
}
