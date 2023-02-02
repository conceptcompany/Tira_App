import 'package:get/get.dart';

import '../controller/my_orders_controller.dart';

class MyOrdersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrdersController());
  }
}
