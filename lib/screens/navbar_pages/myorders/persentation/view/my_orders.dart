import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        body: GetBuilder<MyOrdersController>(
          builder: (logic) {
            return ContainerBody(
              padding: EdgeInsets.only(
                  top: AppSize.s17.h,
                  right: AppSize.s18.w,
                  left: AppSize.s18.w),
              widget: CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      height: AppSize.s50.h,
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(AppSize.s25.r)),
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
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return const OrdersCard();
                              },
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
              ),
            );
          },
        ));
  }
}
