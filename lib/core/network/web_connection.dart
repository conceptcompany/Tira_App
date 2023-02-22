import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

import '../helpers/page_loading_dialog/page_loading_dialog.dart';
import '../services/shared_pref/app_prefs.dart';
import '../utils/image_picker/i_image_file.dart';
import 'api_constant.dart';
import 'auth_header.dart';

class WebServiceConnections {
  WebServiceConnections(
    this._dioInstance,
    this._pageLoading,
  );

  final dio.Dio _dioInstance;
  final IPageLoadingDialog _pageLoading;

  Future<dio.Response> getRequest({
    String? path,
    Map<String, dynamic>? queryParameters,
    bool showLoader = false,
    bool useMyPath = false,
  }) async {
    PageLoadingDialogStatus? loader;

    if (kDebugMode) {
      // its debug mode so print app logs
      _dioInstance.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          canShowLog: true,
          error: true));
    }
    if (showLoader) {
      loader = _pageLoading.showLoadingDialog();
    }
    dio.Response response;
    try {
      print('token ${AppPreferences().jwtToken}');
      response = await _dioInstance.get(
          useMyPath ? path! : '${ApiConstant.baseUrl}$path',
          options: AuthHeader.getBaseOption(
            jwtToken: AppPreferences().jwtToken,
          ),
          queryParameters: queryParameters);

      if (showLoader) {
        loader?.hide();
      }
      log('${response.data}');
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
    // } on dio.DioError catch (e) {
    //   if (showLoader) {
    //     loader?.hide();
    //   }
    //   debugPrint(e.toString());
    //   rethrow;
    // }
  }

  Future<dio.Response> postRequest({
    String? path,
    Map<String, dynamic>? data,
    bool showLoader = false,
    IImageFile? file,
  }) async {
    PageLoadingDialogStatus? loader;
    if (showLoader) {
      loader = _pageLoading.showLoadingDialog();
    }
    if (kDebugMode) {
      // its debug mode so print app logs
      _dioInstance.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          canShowLog: true,
          error: true));
    }
    dio.Response response;
    try {
      if (file != null) {
        dio.FormData formData = dio.FormData.fromMap({
          "image": await dio.MultipartFile.fromFile(
            file.path,
            filename: file.name,
          ),
        });
        data?.forEach((key, value) {
          formData.fields.add(MapEntry(key, value));
        });
        response = await _dioInstance.post(
          '${ApiConstant.baseUrl}$path',
          options:
              AuthHeader.getBaseOption(jwtToken: AppPreferences().jwtToken),
          data: formData,
        );
      } else {
        response = await _dioInstance.post(
          '${ApiConstant.baseUrl}$path',
          options:
              AuthHeader.getBaseOption(jwtToken: AppPreferences().jwtToken),
          data: data,
        );
      }
      log("log:path:$path:${response.data}");
      if (showLoader) {
        loader?.hide();
      }
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
    // } on dio.DioError catch (e) {
    //   if (showLoader) {
    //     loader?.hide();
    //   }
    //   debugPrint(e.message.toString());
    //   rethrow;
    // }
  }

  // Future<dio.Response> postPaymentRequest({
  //   String? path,
  //   Map<String, dynamic>? data,
  //   bool showLoader = false,
  // }) async {
  //   PageLoadingDialogStatus? loader;
  //   if (showLoader) {
  //     loader = _pageLoading.showLoadingDialog();
  //   }
  //   if (!kReleaseMode) {
  //     _dioInstance.interceptors.add(CurlLoggerDioInterceptor(
  //       printOnSuccess: false,
  //     ));
  //   }
  //   dio.Response response;
  //   try {
  //     response = await _dioInstance.post(
  //       '${API.baseUrlStrip}$path',
  //       options: AuthHeader.getBaseOptionStrip(),
  //       data: data,
  //     );
  //     log("log:path:$path:${response.data}");
  //     if (showLoader) {
  //       loader?.hide();
  //     }
  //     return response;
  //   } on dio.DioError catch (e) {
  //     if (showLoader) {
  //       loader?.hide();
  //     }
  //     debugPrint(e.response?.data.toString());
  //     rethrow;
  //   }
  // }
  //
  // Future<dio.Response> postRequestUpdate({
  //   String? path,
  //   Map<String, dynamic>? data,
  //   bool showLoader = false,
  //   IImageFile? file,
  // }) async {
  //   PageLoadingDialogStatus? loader;
  //   if (showLoader) {
  //     loader = _pageLoading.showLoadingDialog();
  //   }
  //   if (!kReleaseMode) {
  //     _dioInstance.interceptors.add(CurlLoggerDioInterceptor(
  //       printOnSuccess: false,
  //     ));
  //   }
  //   dio.Response response;
  //   try {
  //     if (file != null) {
  //       dio.FormData formData = dio.FormData.fromMap({
  //         "avatar": await dio.MultipartFile.fromFile(
  //           file.path,
  //           filename: file.name,
  //         ),
  //       });
  //       data?.forEach((key, value) {
  //         formData.fields.add(MapEntry(key, value));
  //       });
  //       response = await _dioInstance.post(
  //         '${API.baseUrl}$path',
  //         options: AuthHeader.getBaseOption(jwtToken: _storage.jwtToken),
  //         data: formData,
  //       );
  //     } else {
  //       response = await _dioInstance.post(
  //         '${API.baseUrl}$path',
  //         options: AuthHeader.getBaseOption(jwtToken: _storage.jwtToken),
  //         data: data,
  //       );
  //     }
  //     log("log:path:$path:${response.data}");
  //     if (showLoader) {
  //       loader?.hide();
  //     }
  //     return response;
  //   } on dio.DioError catch (e) {
  //     if (showLoader) {
  //       loader?.hide();
  //     }
  //     debugPrint(e.message.toString());
  //     rethrow;
  //   }
  // }

  Future<dio.Response> deleteRequest({
    String? path,
    bool showLoader = false,
    bool useMyPath = false,
  }) async {
    PageLoadingDialogStatus? loader;

    if (kDebugMode) {
      // its debug mode so print app logs
      _dioInstance.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          canShowLog: true,
          error: true));
    }
    if (showLoader) {
      loader = _pageLoading.showLoadingDialog();
    }
    dio.Response response;
    try {
      response = await _dioInstance.delete(
        useMyPath ? path! : '${ApiConstant.baseUrl}$path',
        options: AuthHeader.getBaseOption(
          jwtToken: AppPreferences().jwtToken,
        ),
      );

      if (showLoader) {
        loader?.hide();
      }
      log('response=> ${response.data}');
      return response;
    } on dio.DioError catch (e) {
      if (showLoader) {
        loader?.hide();
      }
      log('response=> ${e.response?.data}}');

      debugPrint(e.toString());
      rethrow;
    }
  }
}
