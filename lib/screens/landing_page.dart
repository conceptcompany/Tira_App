import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/controllers/navbar_controller.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/color_manager.dart';
import '../core/resources/font_manager.dart';
import '../core/resources/styles_manager.dart';
import '../core/resources/values_manager.dart';
import '../widgets/navbar_widget.dart';
import 'navbar_pages/home/drawer/drawer.dart';
import 'navbar_pages/home/search_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return GetBuilder<NavBarController>(
      assignId: true,
      builder: (controller) {
        return Scaffold(
            backgroundColor: const Color(0xffECECEC),
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: (() => Get.to(() => const SearchScreen())),
                  icon: const Icon(
                    Icons.search,
                    size: 22,
                  ),
                ),
              ],
              title: Text(
                controller.getTitle(controller.tabIndex.value),
              ),
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: Image.asset(
                    'assets/images/menu.png',
                    height: 9.h,
                    width: 34.w,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              }),

              // ),
            ),
            drawer: const AppDrawer(),
            body: Navigator(
              key: Get.nestedKey(1),
              initialRoute: '/home',
              onGenerateRoute: controller.onGenerateRoute,
            ),
            floatingActionButton: Visibility(
              visible: !showFab,
              child: Transform.translate(
                offset: const Offset(0, -10),
                child: Container(
                  height: 70,
                  width: 70,
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(2),
                  child: FloatingActionButton(
                    onPressed: () {
                      controller.changePage(0);
                    },
                    backgroundColor: ColorManager.mainColor,
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          ImageAssets.homeIcon,
                          height: AppSize.s28.h,
                          width: AppSize.s28.w,
                        ),
                        Text('الرئيسية',
                            style: getMediumStyle(
                                color: ColorManager.white,
                                fontSize: FontSize.s14.sp))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: Transform.translate(
              offset: const Offset(0, -10),
              child: BottomAppBar(
                color: const Color(0xffECECEC),
                elevation: 0,
                clipBehavior: Clip.hardEdge,
                shape: const CircularNotchedRectangle(
                    // RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    // StadiumBorder(),
                    ),
                notchMargin: 4,
                child: Container(
                  // height: 65.h,
                  padding: EdgeInsets.only(top: AppSize.s5.h),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.r),
                      ),
                      boxShadow: [
                        BoxShadow(color: HexColor('#898989'), blurRadius: 10.r)
                      ]),
                  margin: EdgeInsets.only(left: 22.w, right: 22.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: NavBarWidget(
                          colorText: controller.changeColor(4),
                          text: 'طلباتي',
                          image: SvgPicture.asset(
                            ImageAssets.docsIcon,
                            height: AppSize.s25.h,
                            width: AppSize.s25.w,
                            color: controller.changeColor(4),
                          ),
                          onPressed: () {
                            controller.changePage(4);
                          },
                        ),
                      ),
                      Flexible(
                          child: NavBarWidget(
                        colorText: controller.changeColor(3),
                        text: 'الخدمات',
                        image: SvgPicture.asset(
                          ImageAssets.servicesIcon,
                          height: AppSize.s25.h,
                          width: AppSize.s25.w,
                          color: controller.changeColor(3),
                        ),
                        onPressed: () {
                          controller.changePage(3);
                        },
                      )),
                      const Spacer(),
                      Flexible(
                        child: NavBarWidget(
                          colorText: controller.changeColor(2),
                          text: 'تقاريري',
                          image: SvgPicture.asset(
                            ImageAssets.reportIcon,
                            height: AppSize.s25.h,
                            width: AppSize.s25.w,
                            color: controller.changeColor(2),
                          ),
                          onPressed: () {
                            controller.changePage(2);
                          },
                        ),
                      ),
                      Flexible(
                        child: NavBarWidget(
                          text: 'الاشعارات',
                          colorText: controller.changeColor(1),
                          image: SvgPicture.asset(
                            ImageAssets.notificationIcon,
                            height: AppSize.s25.h,
                            width: AppSize.s25.w,
                            color: controller.changeColor(1),
                          ),
                          onPressed: () {
                            controller.changePage(1);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
