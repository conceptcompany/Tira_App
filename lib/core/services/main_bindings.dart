import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../controllers/navbar_controller.dart';
import '../../controllers/splash_controller.dart';
import '../helpers/page_loading_dialog/page_loading_dialog.dart';
import '../network/network_info.dart';
import '../network/web_connection.dart';
import '../utils/image_picker/i_image_picker.dart';
import '../utils/image_picker/image_picker_impl/real_image_picker.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(
      () => Dio(),
    );
    Get.put(
      () => Dio(),
      permanent: true,
    );
    Get.put<IPageLoadingDialog>(
      PageLoadingDialog(),
      permanent: true,
    );
    Get.put<IImagePicker>(
      ImagePickerImpl(),
      permanent: true,
    );
    Get.put<NetworkInfo>(
      NetworkInfoImpl(InternetConnectionChecker()),
      permanent: true,
    );
    Get.put<WebServiceConnections>(
      WebServiceConnections(
        Get.find<Dio>(),
        Get.find<IPageLoadingDialog>(),
      ),
      permanent: true,
    );
    Get.lazyPut(() => NavBarController());
    // Get.lazyPut<BaseServicesDataSource>(
    //   () => ServicesDataSource(Get.find<WebServiceConnections>()),
    // );
    // Get.lazyPut(() => AllServicesController(
    //       Get.find<NetworkInfo>(),
    //       Get.find<BaseServicesDataSource>(),
    //     ));
  }
}
