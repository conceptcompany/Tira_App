// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
// import 'package:quatalaraba/core/network/api_constant.dart';
//
// import '../services/shared_pref/app_prefs.dart';
//
// const String APPLICATION_JSON = "application/json";
// const String CONTENT_TYPE = "content-type";
// const String ACCEPT = "accept";
// const String AUTHORIZATION = "authorization";
// const String DEFAULT_LANGUAGE = "language";
//
// class DioFactory {
//   final AppPreferences _sharedPreferences;
//
//   DioFactory(this._sharedPreferences);
//
//   Future<Dio> getDio() async {
//     Dio dio = Dio();
//     String token = await _sharedPreferences.getAuthToken();
//     Map<String, String> headers = {
//       CONTENT_TYPE: APPLICATION_JSON,
//       ACCEPT: APPLICATION_JSON,
//       AUTHORIZATION: token,
//       // DEFAULT_LANGUAGE: language
//     };
//
//     dio.options = BaseOptions(
//         baseUrl: ApiConstant.baseUrl,
//         headers: headers,
//         receiveTimeout: ApiConstant.apiTimeOut,
//         sendTimeout: ApiConstant.apiTimeOut);
//
//     if (kDebugMode) {
//       // its debug mode so print app logs
//       dio.interceptors.add(PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseHeader: true,
//           canShowLog: true,
//           error: true));
//     }
//
//     return dio;
//   }
// }
