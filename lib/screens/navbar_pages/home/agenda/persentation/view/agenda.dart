import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/agenda/persentation/widgets/agenda_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/values_manager.dart';
import '../controller/agenda_controller.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(AppStrings.agenda),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: GetBuilder<AgendaController>(
        builder: (logic) {
          return ContainerBody(
            padding: EdgeInsets.symmetric(
                vertical: AppSize.s18.h, horizontal: AppSize.s16.w),
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
                SliverFillRemaining(
                  hasScrollBody: true,
                  fillOverscroll: true,
                  child: TabBarView(
                      controller: logic.controller,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: AppSize.s8.h),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: 15,
                              itemBuilder: (context, index) => const AgendaCard(),
                            )),
                        Container(
                          child: const Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: const Center(
                            child: Text('Display Tab 4',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ]),

                  // hasScrollBody: true,
                  // child:
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

///            child: Column(children: [
//               ToggleSwitch(
//                 minHeight: 45.h,
//                 minWidth: 135.w,
//                 radiusStyle: true,
//                 totalSwitches: 3,
//                 cornerRadius: 25.r,
//                 activeBgColor: [ColorManager.mainColor],
//                 inactiveBgColor: ColorManager.white,
//                 borderColor: [ColorManager.mainColor],
//                 borderWidth: 0.5.w,
//                 initialLabelIndex: 0,
//                 labels: const [
//                   'الإجازات الرسمية',
//                   'مناسبات وطنية',
//                   'الأعياد و الأحداث '
//                 ],
//                 fontSize: 18.sp,
//                 activeFgColor: ColorManager.white,
//                 inactiveFgColor: ColorManager.mainColor,
//                 onToggle: (index) {},
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: 15,
//                 itemBuilder: (context, index) => AgendaCard(),
//               )
//             ]),
