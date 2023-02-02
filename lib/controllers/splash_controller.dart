import 'dart:developer';

import 'package:get/get.dart';
import 'package:tira_app/core/services/shared_pref/app_prefs.dart';

import '../core/routes/app_routes.dart';

class SplashController extends GetxController {
  // final getStorage = GetStorage();

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 2), () {
      if (AppPreferences().isLogin == true) {
        log(AppPreferences().jwtToken.toString());
        Get.offAllNamed(AppRoutes.home);
      } else {
        Get.offAllNamed(AppRoutes.auth);
      }
    });
    // if(getStorage.read('id') != null){

    // }
  }
}
