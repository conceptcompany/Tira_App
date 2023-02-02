import 'package:get/get.dart';

import '../../../core/network/web_connection.dart';
import '../data/data_source/auth_data_source.dart';
import '../presentation/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseAuthDataSource>(
      () => AuthDataSource(Get.find<WebServiceConnections>()),
    );
    Get.lazyPut(() => AuthController(
          Get.find(),
          Get.find<BaseAuthDataSource>(),
        ));
  }
}
