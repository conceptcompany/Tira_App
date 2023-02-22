import 'package:get/get.dart';

import '../persentation/controller/details_form_controller.dart';

class ServicesFormBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsFormController());
  }
}
