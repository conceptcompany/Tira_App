/// status : "success"
/// errors : 0
/// data : "تم إرسال الكود بنجاح"

class SuccessModel {
  SuccessModel({
      this.status, 
      this.errors, 
      this.data,});

  SuccessModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'];
  }
  String? status;
  num? errors;
  String? data;
SuccessModel copyWith({  String? status,
  num? errors,
  String? data,
}) => SuccessModel(  status: status ?? this.status,
  errors: errors ?? this.errors,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errors'] = errors;
    map['data'] = data;
    return map;
  }

}