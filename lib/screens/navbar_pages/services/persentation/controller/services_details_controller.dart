import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/resources/strings_manager.dart';

class ServicesDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin {
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
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
