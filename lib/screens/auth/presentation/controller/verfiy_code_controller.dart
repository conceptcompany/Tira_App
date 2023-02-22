import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/services/shared_pref/app_prefs.dart';
import '../../../../core/utils/data/error_parser.dart';
import '../../../../core/utils/error_toast.dart';
import '../../data/data_source/auth_data_source.dart';

class VerifyCodeController extends GetxController {
  final phone = Get.arguments;
  final NetworkInfo _networkInfo;
  final BaseAuthDataSource _baseAuthDataSource;

  VerifyCodeController(this._networkInfo, this._baseAuthDataSource);
  final TextEditingController codeOtpController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    log(phone.toString());
  }

  Future<void> verifycode(String otp) async {
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        final model =
            await _baseAuthDataSource.verifyOtp(phone.toString(), otp);
        if (model.status == "success") {
          Get.showSnackbar(GetSnackBar(
            title: "تسجيل الدخول",
            message: " تم تسجيل الدخول بنجاح",
            margin: EdgeInsets.all(15),
            backgroundColor: ColorManager.mainColor,
            snackPosition: SnackPosition.TOP,
            borderRadius: 15,
            duration: Duration(seconds: 2),
          ));
          await AppPreferences().setAuthToken(model.data!.accessToken ?? '');
          await AppPreferences().setUserLoggedIn();
          Get.offNamed(AppRoutes.home);
          update();

          log('model=> ${model}');
        } else {
          // errorToast(model.message ?? '');
        }
      } catch (ex) {
        String? appError = ErrorParser().parseError(ex);
        errorToast(appError!);
      }
    } else {
      errorToast("No Internet");
    }
  }
}
