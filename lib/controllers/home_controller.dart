import 'package:get/get.dart';

import 'navbar_controller.dart';

class HomeController extends GetxController {}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NavBarController());
  }
}
