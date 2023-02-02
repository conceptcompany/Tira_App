import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';
import '../../../../../../core/resources/values_manager.dart';
import '../widget/forms_card.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: const Text(AppStrings.forms),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ContainerBody(
          padding: EdgeInsets.only(
              top: AppSize.s17.h, right: AppSize.s18.w, left: AppSize.s18.w),
          widget: CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppSize.s25.r)),
                        border: Border.all(
                            color: ColorManager.mainColor,
                            width: AppSize.s1.w)),
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: AppStrings.newForms,
                        ),
                        Tab(text: AppStrings.underwayForms),
                        Tab(text: AppStrings.completedForms),
                      ],
                    ),
                  ),
                ),

                // widget: Column(children: [
                //   ToggleSwitch(
                //     // minHeight: 40.h,
                //     minWidth: 150.w,
                //     radiusStyle: true,
                //     totalSwitches: 3,
                //     cornerRadius: 25.r,
                //     activeBgColor: [ColorManager.mainColor],
                //     inactiveBgColor: ColorManager.white,
                //     borderColor: [ColorManager.mainColor],
                //     borderWidth: 0.5.w,
                //     initialLabelIndex: 0,
                //     labels: const [
                //       'استمارات جديدة',
                //       'استمارات قيد التنفيذ',
                //       'استمارات مكتملة'
                //     ],
                //     fontSize: 17.sp,
                //     activeFgColor: ColorManager.white,
                //     inactiveFgColor: ColorManager.mainColor,
                //     onToggle: (index) {},
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.only(top: 8.0),
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //       physics: ScrollPhysics(),
                //       itemCount: 10,
                //       itemBuilder: (context, index) {
                //         return FormsCard();
                //       },
                //     ),
                //   ),
                // ]),

                SliverFillRemaining(
                  hasScrollBody: true,
                  fillOverscroll: true,
                  child:
                      TabBarView(controller: _tabController, children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                        // shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const FormsCard();
                        },
                      ),
                    ),
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
              ]),
        ));
  }
}
