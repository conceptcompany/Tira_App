import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/color_manager.dart';
import 'package:tira_app/core/resources/strings_manager.dart';

import '../screens/navbar_pages/home/home.dart';
import '../screens/navbar_pages/myorders/binding/my_orders_bindings.dart';
import '../screens/navbar_pages/myorders/persentation/view/my_orders.dart';
import '../screens/navbar_pages/notification/notifications.dart';
import '../screens/navbar_pages/reports/bindings/my_orders_binding.dart';
import '../screens/navbar_pages/reports/persenation/view/reports.dart';
import '../screens/navbar_pages/services/bindings/all_services_bindings.dart';
import '../screens/navbar_pages/services/persentation/view/services.dart';

class NavBarController extends GetxController {
  var tabIndex = 0.obs;
  var isPressed = false.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  Color changeColor(int index) {
    if (tabIndex.value == index) {
      return mainColor;
    } else {
      return unselectedIconColor;
    }
  }

  void changePage(int index) {
    if (tabIndex.value != index) {
      tabIndex.value = index;
      print(tabIndex.value);
      Get.offNamedUntil(
        pages[index],
        (page) => page.settings.name == '/home',
        id: 1,
      );
      // Get.keys[1]!.currentState!.pushNamed(pages[index]);
      // // Get.toNamed(
      // //   pages[index],
      // //   id: 1,
      // // );
      update();
    }
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return AppStrings.appName;
      case 1:
        return AppStrings.notification;
      case 2:
        return AppStrings.myReports;
      case 3:
        return AppStrings.services;
      case 4:
        return AppStrings.myOrders;
      default:
        return '';
    }
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return GetPageRoute(
          settings: settings,
          // curve: Curves.easeInCirc,
          transitionDuration: const Duration(milliseconds: 100),
          transition: Transition.downToUp,

          page: () => const HomeScreen(),
          // binding: HomeBinding(),

          // binding: BrowseBinding(),
        );
      case '/Notifications':
        return GetPageRoute(
          settings: settings,
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 100),
          page: () => const NotificationsScreen(),
          // binding: HistoryBinding(),
        );
      case '/Reports':
        return GetPageRoute(
            settings: settings,
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 100),
            page: () => const Reports(),
            binding: MyOrderBindings()

            // binding: ProfileBinding(),
            );
      case '/ServiceScreen':
        return GetPageRoute(
            settings: settings,
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 100),
            page: () => const ServiceScreen(),
            binding: AllServicesBinding()
            // binding: SettingsBinding(),
            );
      case '/MyOrders':
        return GetPageRoute(
            settings: settings,
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 100),
            page: () => const MyOrders(),
            binding: MyOrdersBinding());
      // binding: CartBinding());
      default:
        return GetPageRoute(
            settings: settings,
            transition: Transition.leftToRight,
            page: () => Container(
                  child: const Text('NO Page'),
                ));
    }
  }

  final pages = <String>[
    '/home',
    '/Notifications',
    '/Reports',
    '/ServiceScreen',
    '/MyOrders',
  ];
}
