import 'package:get/get.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/network/web_connection.dart';
import '../data/data_source/services_data_source.dart';
import '../persentation/controller/all_services_controller.dart';

class AllServicesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseServicesDataSource>(
      () => ServicesDataSource(Get.find<WebServiceConnections>()),
    );
    Get.lazyPut(() => AllServicesController(
          Get.find<NetworkInfo>(),
          Get.find<BaseServicesDataSource>(),
        ));
  }
}
