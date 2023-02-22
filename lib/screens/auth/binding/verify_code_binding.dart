import 'package:get/get.dart';

import '../../../core/network/network_info.dart';
import '../../../core/network/web_connection.dart';
import '../data/data_source/auth_data_source.dart';
import '../presentation/controller/verfiy_code_controller.dart';

class VerifyCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseAuthDataSource>(
      () => AuthDataSource(Get.find<WebServiceConnections>()),
    );
    Get.lazyPut(() => VerifyCodeController(
          Get.find<NetworkInfo>(),
          Get.find<BaseAuthDataSource>(),
        ));
  }
}
