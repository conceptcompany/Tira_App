import 'package:get/get.dart';

import '../persentation/controller/services_details_controller.dart';

class ServicesDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServicesDetailsController());
  }
}
