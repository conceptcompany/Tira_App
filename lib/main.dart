import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tira_app/core/resources/color_manager.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/strings_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';

import 'core/resources/values_manager.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/get_pages.dart';
import 'core/services/main_bindings.dart';
import 'core/services/shared_pref/app_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences().initPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return GetMaterialApp(
            title: AppStrings.appName,
            theme: ThemeData(
              primaryTextTheme: TextTheme(
                  titleMedium: getRegularStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s20.sp),
                  titleLarge: getRegularStyle(
                      color: ColorManager.white, fontSize: FontSize.s23.sp),
                  bodyMedium: getSemiBoldStyle(
                      color: ColorManager.white, fontSize: FontSize.s18.sp),
                  bodySmall: getRegularStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s16.sp),
                  bodyLarge: getRegularStyle(
                      color: ColorManager.black, fontSize: FontSize.s20.sp),
                  displayMedium: getRegularStyle(
                      color: ColorManager.secondColor,
                      fontSize: FontSize.s18.sp),
                  titleSmall: getRegularStyle(
                      color: ColorManager.white, fontSize: FontSize.s16.sp)),
              textTheme: TextTheme(
                  titleMedium:
                      getRegularStyle(color: black, fontSize: FontSize.s18.sp),
                  bodyMedium: TextStyle(
                      fontSize: FontSize.s16.sp,
                      fontWeight: FontWeight.w400,
                      color: secondColor,
                      fontFamily: 'Hanimation',
                      overflow: TextOverflow.ellipsis),
                  headlineSmall: getRegularStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s14.sp),
                  bodyLarge:
                      getSemiBoldStyle(color: black, fontSize: FontSize.s18.sp),
                  displaySmall: getSemiBoldStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s14.sp),
                  displayLarge: getSemiBoldStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s18.sp),
                  displayMedium: getMediumStyle(
                      color: ColorManager.mainColor, fontSize: FontSize.s18.sp),
                  bodySmall:
                      getRegularStyle(color: black, fontSize: FontSize.s14.sp)),
              fontFamily: 'Hanimation',
              appBarTheme: AppBarTheme(
                  color: ColorManager.mainColor,
                  elevation: 0,
                  centerTitle: true,
                  titleTextStyle: getSemiBoldStyle(
                    color: ColorManager.white,
                    fontSize: FontSize.s20.sp,
                  ),
                  actionsIconTheme:
                      const IconThemeData(color: ColorManager.white)),
              tabBarTheme: TabBarTheme(
                  indicator: BoxDecoration(
                    color: ColorManager.mainColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppSize.s25.r)),
                  ),
                  labelColor: ColorManager.white,
                  unselectedLabelColor: ColorManager.mainColor,
                  labelStyle: getLightStyle(
                      color: ColorManager.white, fontSize: FontSize.s16.sp),
                  unselectedLabelStyle: getLightStyle(
                    color: ColorManager.white,
                    fontSize: FontSize.s16.sp,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: EdgeInsets.zero),
            ),
            debugShowCheckedModeBanner: false,
            textDirection: TextDirection.rtl,
            getPages: AppPages.pages,
            initialBinding: MainBinding(),
            initialRoute: AppRoutes.splash,
          );
        }));
  }
}

// class Home extends StatelessWidget {
//    Home({super.key});

//   final navController = Get.put(NavBarController());

//   @override
//   Widget build(BuildContext context) {
//     final PageStorageBucket bucket = PageStorageBucket();
//     navController.currentScreen = HomeScreen();
//     return Scaffold(
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: PageStorage(bucket: bucket, child: navController.currentScreen ),

//       floatingActionButton: FloatingActionButton(
//         backgroundColor: ColorManager.mainColor,
//         child: Icon(Icons.home),
//         onPressed: () {},
//       ),
//     );
//   }
// }
