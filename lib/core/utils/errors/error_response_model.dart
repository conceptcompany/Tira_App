/// data : {"code":"id_number","message":"قيمة id number مُستخدمة من قبل"}

class ErrorResponseModel {
  ErrorResponseModel({
    this.data,
  });

  ErrorResponseModel.fromJson(dynamic json) {
    data = json['data'] != null ? ErrorResponse.fromJson(json['data']) : null;
  }
  ErrorResponse? data;
  ErrorResponseModel copyWith({
    ErrorResponse? data,
  }) =>
      ErrorResponseModel(
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// code : "id_number"
/// message : "قيمة id number مُستخدمة من قبل"

class ErrorResponse {
  ErrorResponse({
    this.code,
    this.message,
  });

  ErrorResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
  }
  String? code;
  String? message;
  ErrorResponse copyWith({
    String? code,
    String? message,
  }) =>
      ErrorResponse(
        code: code ?? this.code,
        message: message ?? this.message,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }
}
