import 'package:get/get.dart';

class SettingsController extends GetxController {
  var sliderValue = 0.0.obs;
}

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}
