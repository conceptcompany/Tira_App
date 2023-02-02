import 'package:get/get.dart';

import '../persentation/controller/agenda_controller.dart';

class AgendaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgendaController());
  }
}
