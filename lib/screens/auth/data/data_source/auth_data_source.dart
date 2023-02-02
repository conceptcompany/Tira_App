import 'package:dio/dio.dart';

import '../../../../core/network/api_constant.dart';
import '../../../../core/network/web_connection.dart';
import '../models/login_model.dart';
import '../models/register_model.dart';

abstract class BaseAuthDataSource {
  Future<RegisterModel> register(
      String phone, String idNumber, String email, String password);
  Future<LoginModel> login(String phoneOrId, String password);
}

class AuthDataSource implements BaseAuthDataSource {
  final WebServiceConnections _webServiceConnections;

  AuthDataSource(this._webServiceConnections);

  @override
  Future<RegisterModel> register(
      String phone, String idNumber, String email, String password) async {
    try {
      Response response = await _webServiceConnections
          .postRequest(path: ApiConstant.register, showLoader: false, data: {
        "phone": phone,
        "id_number": idNumber,
        "email": email,
        "password": password,
      });
      RegisterModel registerModel = RegisterModel.fromJson(response.data);
      return registerModel;
    } catch (ex) {
      rethrow;
    }
  }

  @override
  Future<LoginModel> login(String phoneOrId, String password) async {
    try {
      Response response = await _webServiceConnections
          .postRequest(path: ApiConstant.login, showLoader: false, data: {
        "phoneOrIdnumer": phoneOrId,
        "password": password,
      });
      LoginModel loginModel = LoginModel.fromJson(response.data);
      return loginModel;
    } catch (ex) {
      rethrow;
    }
  }
}
