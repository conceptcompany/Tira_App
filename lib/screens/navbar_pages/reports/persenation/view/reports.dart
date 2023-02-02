import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/reports/persenation/widgets/reports_card.dart';
import 'package:tira_app/screens/navbar_pages/reports/persenation/widgets/search_bar.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../controller/my_reports_controller.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: GetBuilder<MyReportsController>(
        builder: (logic) {
          return ContainerBody(
            widget: Container(
              margin: const EdgeInsets.all(15),
              child: CustomScrollView(
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
                  const SliverToBoxAdapter(
                    child: SearchBaar(),
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
                                return const ReportsCard();
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
            ),
          );
        },
      ),
    );
  }
}
