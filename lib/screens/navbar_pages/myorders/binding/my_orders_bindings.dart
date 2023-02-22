import 'package:get/get.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/network/web_connection.dart';
import '../data/data_source/my_order_data_source.dart';
import '../persentation/controller/my_orders_controller.dart';

class MyOrdersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseMyOrderDataSource>(
      () => MyOrderDataSource(Get.find<WebServiceConnections>()),
    );
    Get.lazyPut(() => MyOrdersController(
          Get.find<NetworkInfo>(),
          Get.find<BaseMyOrderDataSource>(),
        ));
  }
}
