import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/utils/data/error_parser.dart';
import '../../../../../core/utils/error_toast.dart';
import '../../data/data_source/services_data_source.dart';
import '../../data/models/services_details_model.dart';

class ServicesDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final NetworkInfo _networkInfo;
  final BaseServicesDataSource _baseServicesDataSource;
  RxBool isLoading = false.obs;
  ServicesDetailsController(this._networkInfo, this._baseServicesDataSource);
  ServicesDetailsModel? _servicesDetailsModel;
  ServicesDetailsModel? get servicesDetailsModel => _servicesDetailsModel;

  final details = Get.arguments;
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: AppStrings.currentServices,
    ),
    const Tab(
      text: AppStrings.pendingServices,
    ),
    const Tab(text: AppStrings.completedServices),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    if (details != null) {
      servicesById();
    }
    print(details);
  }

  Future<void> servicesById() async {
    isLoading.value = false;
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        isLoading.value = false;
        final model = await _baseServicesDataSource
            .getServicesById(details[0].toString());
        if (model.status == 'success') {
          _servicesDetailsModel = model;
          update(['serviceDetails']);
          isLoading.value = true;
          log('model=> ${model}');
        } else {
          errorToast('هناك خطأ ما ');
        }
      } catch (ex) {
        String? appError = ErrorParser().parseError(ex);
        errorToast(appError!);
        isLoading.value = true;
      }
    } else {
      errorToast("No Internet");
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
