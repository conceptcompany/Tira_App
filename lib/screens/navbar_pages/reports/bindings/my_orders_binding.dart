import 'package:get/get.dart';

import '../persenation/controller/my_reports_controller.dart';

class MyOrderBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyReportsController());
  }
}
