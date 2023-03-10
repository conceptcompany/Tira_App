import 'package:get/get.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/network/web_connection.dart';
import '../data/data_source/services_data_source.dart';
import '../persentation/controller/services_details_controller.dart';

class ServicesDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseServicesDataSource>(
      () => ServicesDataSource(Get.find<WebServiceConnections>()),
    );
    Get.lazyPut(() => ServicesDetailsController(
          Get.find<NetworkInfo>(),
          Get.find<BaseServicesDataSource>(),
        ));
  }
}
