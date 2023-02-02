import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/auth/presentation/widget/auth_container.dart';
import 'package:tira_app/screens/auth/presentation/widget/register_con.dart';
import 'package:tira_app/widgets/topBar.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../controller/auth_controller.dart';
import '../widget/login_con.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (logic) {
      return CustomTabBarWidget(
          widget: AuthContainer(
              padding: EdgeInsets.only(
                  left: 17.w, right: 33.w, top: 78.h, bottom: 50.h),
              margin: EdgeInsets.only(top: 10.h),
              widget: Column(children: [
                //     Container(
                //       child: TabBar(
                //         tabs: [
                //           Tab(
                //             text: 'jsss',
                //           ),
                //           Tab(
                //             text: 'jsss',
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //
                //         child: TabBarView(children: [LoginCon(), RegisterCon()])),
                //   ],
                // ),
                Container(
                  height: AppSize.s50.h,
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppSize.s25.r)),
                      border: Border.all(
                          color: ColorManager.mainColor, width: AppSize.s1.w)),
                  child:
                      TabBar(controller: logic.controller, tabs: logic.myTabs),
                ),
                // ToggleSwitch(
                //     animate: true,
                //     minHeight: 40.h,
                //     minWidth: 150.w,
                //     // customHeights: [55.h],
                //     // customHeights: [55.h, 60.h],
                //     // customWidths: [120.w, 120.w],
                //     totalSwitches: 2,
                //     cornerRadius: 20.r,
                //     activeBgColor: const [ColorManager.mainColor],
                //     inactiveBgColor: ColorManager.white,
                //     borderColor: const [Colors.grey],
                //     borderWidth: 0.4.w,
                //     initialLabelIndex: logic.index.value,
                //     labels: const ['تسجيل دخول', 'حساب جديد'],
                //     fontSize: 16.sp,
                //     onToggle: (index) {
                //       print(index);
                //       print(logic.index.value);
                //       logic.changeIndex(index);
                //     }
                //     //
                //     // if (index == 0) {
                //     //   c.isLogin.value = true;
                //     //   w = LoginCon();
                //     // }
                //     // if (index == 1) {
                //     //   c.isLogin.value = false;
                //     //   w = RegisterCon();
                //     // }
                //     ),
                IndexedStack(
                  index: logic.index.value,
                  children: [
                    LoginCon(
                      authController: logic,
                    ),
                    RegisterCon(
                      authController: logic,
                    )
                  ],
                ),

                // Obx(() {
                //   if (c.isLogin.value == true) {
                //     return w = LoginCon();
                //   } else {
                //     return w = RegisterCon();
                //   }
                // })
              ])));
    });
  }
}
