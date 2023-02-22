import 'package:dio/dio.dart';

import '../../../../../core/network/api_constant.dart';
import '../../../../../core/network/web_connection.dart';
import '../models/all_services_model.dart';
import '../models/services_details_model.dart';

abstract class BaseServicesDataSource {
  Future<AllServicesModel> getAllServices();
  Future<ServicesDetailsModel> getServicesById(String id);
}

class ServicesDataSource implements BaseServicesDataSource {
  final WebServiceConnections _webServiceConnections;

  ServicesDataSource(this._webServiceConnections);

  @override
  Future<AllServicesModel> getAllServices() async {
    try {
      Response response = await _webServiceConnections.getRequest(
          path: ApiConstant.allServices, showLoader: false);
      AllServicesModel allServicesModel =
          AllServicesModel.fromJson(response.data);
      return allServicesModel;
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<ServicesDetailsModel> getServicesById(String id) async {
    try {
      Response response = await _webServiceConnections.getRequest(
          path: ApiConstant.servicesByID + id, showLoader: false);
      ServicesDetailsModel servicesDetailsModel =
          ServicesDetailsModel.fromJson(response.data);
      return servicesDetailsModel;
    } catch (ex) {
      rethrow;
    }
  }
}
