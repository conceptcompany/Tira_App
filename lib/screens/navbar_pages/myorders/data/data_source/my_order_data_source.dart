import 'package:dio/dio.dart';

import '../../../../../core/network/api_constant.dart';
import '../../../../../core/network/web_connection.dart';
import '../models/my_order_model.dart';

abstract class BaseMyOrderDataSource {
  Future<MyOrderModel> getMyOrderNew();
  Future<MyOrderModel> getMyOrderComplete();
}

class MyOrderDataSource implements BaseMyOrderDataSource {
  final WebServiceConnections _webServiceConnections;

  MyOrderDataSource(this._webServiceConnections);

  @override
  Future<MyOrderModel> getMyOrderNew() async {
    try {
      Response response = await _webServiceConnections.getRequest(
          path: ApiConstant.myOrderNew, showLoader: false);
      MyOrderModel myOrderModel = MyOrderModel.fromJson(response.data);
      return myOrderModel;
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<MyOrderModel> getMyOrderComplete() async {
    try {
      Response response = await _webServiceConnections.getRequest(
          path: ApiConstant.myOrderComplete, showLoader: false);
      MyOrderModel myOrderModelComplete = MyOrderModel.fromJson(response.data);
      return myOrderModelComplete;
    } catch (ex) {
      rethrow;
    }
  }
}
