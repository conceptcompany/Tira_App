/// stutas : true
/// code : 200
/// message : "تم الاضافة الى السلة بنجاح"

class BaseModel {
  BaseModel({
      this.stutas, 
      this.code, 
      this.message,});

  BaseModel.fromJson(dynamic json) {
    stutas = json['stutas'];
    code = json['code'];
    message = json['message'];
  }
  bool? stutas;
  num? code;
  String? message;
BaseModel copyWith({  bool? stutas,
  num? code,
  String? message,
}) => BaseModel(  stutas: stutas ?? this.stutas,
  code: code ?? this.code,
  message: message ?? this.message,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stutas'] = stutas;
    map['code'] = code;
    map['message'] = message;
    return map;
  }

}