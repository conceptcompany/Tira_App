import 'package:get/get.dart';

class EmergancyConroller extends GetxController {
  var isDanger = false;
  var isWarn = false;
  var isNotice = false;
}

class EmergancyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmergancyConroller());
  }
}
