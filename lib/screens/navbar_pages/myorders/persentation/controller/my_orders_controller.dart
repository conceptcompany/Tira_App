import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/utils/data/error_parser.dart';
import '../../../../../core/utils/error_toast.dart';
import '../../data/data_source/my_order_data_source.dart';
import '../../data/models/my_order_model.dart';

class MyOrdersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final NetworkInfo _networkInfo;
  final BaseMyOrderDataSource _baseMyOrderDataSource;

  MyOrdersController(this._networkInfo, this._baseMyOrderDataSource);

  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: AppStrings.newOrders,
    ),
    const Tab(text: AppStrings.completedOrders),
  ];

  late TabController controller;
  RxBool isLoading = false.obs;
  MyOrderModel? _myOrderModelNew;
  MyOrderModel? get myOrderModelNew => _myOrderModelNew;
  MyOrderModel? _myOrderModelComplete;
  MyOrderModel? get myOrderModelComplete => _myOrderModelComplete;
  @override
  void onInit() async {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    await getMyOrderNew();
    await getMyOrderComplete();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  Future<void> getMyOrderNew() async {
    isLoading.value = false;
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        isLoading.value = false;
        final model = await _baseMyOrderDataSource.getMyOrderNew();
        if (model.status == 'success') {
          _myOrderModelNew = model;
          update(['myOrder']);
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

  Future<void> getMyOrderComplete() async {
    isLoading.value = false;
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        isLoading.value = false;
        final model = await _baseMyOrderDataSource.getMyOrderComplete();
        if (model.status == 'success') {
          _myOrderModelComplete = model;
          update(['myOrder']);
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
}
