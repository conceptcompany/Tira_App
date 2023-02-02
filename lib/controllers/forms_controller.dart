import 'package:get/get.dart';

class FormController extends GetxController {
  var formValue = false.obs;
}

class FormsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormController());
  }
}
