import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/services/shared_pref/app_prefs.dart';

import '../../../../core/helpers/email_checker.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/data/error_parser.dart';
import '../../../../core/utils/error_toast.dart';
import '../../data/data_source/auth_data_source.dart';

class AuthController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AuthController(
    this._networkInfo,
    this._baseAuthDataSource,
  );
  final NetworkInfo _networkInfo;
  final BaseAuthDataSource _baseAuthDataSource;
  static AuthController get to => Get.find();
  final TextEditingController registerPhoneController = TextEditingController();
  final TextEditingController registerIdNumberController =
      TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();

  final TextEditingController loginPhoneController = TextEditingController();
  final TextEditingController sendPhoneController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  var isLogin = true.obs;
  RxInt index = 0.obs;
  var w = Widget;
  var h = 0.0.obs;
  RxBool showPass = false.obs;

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: AppStrings.loginLabel,
    ),
    const Tab(text: AppStrings.registerLabel),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    controller.addListener(_handleTabSelection);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void changeIndex(int? onToggle) {
    index.value = onToggle!;
    update();
  }

  Future<void> register(
      String phone, String idNumber, String email, String password) async {
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        final model = await _baseAuthDataSource.register(
            phone, idNumber, email, password);
        if (model.status == "success") {
          Get.showSnackbar(const GetSnackBar(
            title: "تسجيل حساب جديد",
            message: " تم تسجيل حساب جديد بنجاح",
            margin: EdgeInsets.all(15),
            backgroundColor: ColorManager.mainColor,
            snackPosition: SnackPosition.TOP,
            borderRadius: 15,
            duration: Duration(seconds: 2),
          ));
          controller.index = 0;
          // Get.toNamed(Routes.homeRoute);
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

  Future<void> login(String phoneOrId, String password) async {
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        final model = await _baseAuthDataSource.login(phoneOrId, password);
        if (model.status == "success") {
          Get.showSnackbar(const GetSnackBar(
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

  Future<void> sendSms(String phone) async {
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        final model = await _baseAuthDataSource.sendSms(phone);
        if (model.status == "success") {
          Get.showSnackbar(GetSnackBar(
            title: "التحقق من رقم الهاتف",
            message: model.data,
            margin: EdgeInsets.all(15),
            backgroundColor: ColorManager.mainColor,
            snackPosition: SnackPosition.TOP,
            borderRadius: 15,
            duration: Duration(seconds: 2),
          ));

          update();
          Get.toNamed(AppRoutes.verifyOtp, arguments: sendPhoneController.text);
          log('model=> ${model}');
        } else {
          // errorToast(model.message ?? '');
        }
      } catch (ex) {
        Get.toNamed(AppRoutes.verifyOtp, arguments: sendPhoneController.text);
        String? appError = ErrorParser().parseError(ex);
        errorToast(appError!);
      }
    } else {
      errorToast("No Internet");
    }
  }

  void _handleTabSelection() {
    index.value = controller.index;
    update();
  }

  String validator(String email) {
    if (EmailChecker.isNotValid(email)) {
      return 'تأكد من إدخال الإيميل بنجاح';
    } else {
      return '';
    }
  }

  void showPassword() {
    showPass.toggle();
    update();
  }

  String? validation(String? value) {
    print(loginPhoneController.text);
    print(value);
    if (value == '') {
      return "قم بإدخال رقم الهاتف/ الهوية";
    } else {
      return null;
    }
  }
}
