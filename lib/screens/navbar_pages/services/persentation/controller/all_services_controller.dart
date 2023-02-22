import 'dart:developer';

import 'package:get/get.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/utils/data/error_parser.dart';
import '../../../../../core/utils/error_toast.dart';
import '../../data/data_source/services_data_source.dart';
import '../../data/models/all_services_model.dart';

class AllServicesController extends GetxController {
  final NetworkInfo _networkInfo;
  final BaseServicesDataSource _baseServicesDataSource;
  RxBool isLoading = false.obs;
  AllServicesController(this._networkInfo, this._baseServicesDataSource);
  AllServicesModel? _allServicesModel;
  AllServicesModel? get allServicesModel => _allServicesModel;

  @override
  void onInit() {
    super.onInit();
    getAllServices();
  }

  Future<void> getAllServices() async {
    isLoading.value = false;
    bool isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      try {
        isLoading.value = false;
        final model = await _baseServicesDataSource.getAllServices();
        if (model.status == 'success') {
          _allServicesModel = model;
          update(['services']);
          isLoading.value = true;
          log('model=> ${model}');
        } else {
          errorToast('هناك خطأ ما ');
        }
      } catch (ex) {
        String? appError = ErrorParser().parseError(ex);
        errorToast(appError!);
        isLoading.value = true;
      }
    } else {
      errorToast("No Internet");
      isLoading.value = false;
    }
  }
}
