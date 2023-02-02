/// status : "success"
/// errors : 0
/// data : {"citizen_jawal":"99","password":"$2y$10$czDjwhWUBUIQxp4eyAg.7eXkul54CzNtu6HNST3zpWtDSejlShhyu","citizen_email":"mohrr@gmail.com","citizen_national_id":"99","updated_at":"2023-02-01T10:41:14.000000Z","created_at":"2023-02-01T10:41:14.000000Z","id":15}

class RegisterModel {
  RegisterModel({
    this.status,
    this.errors,
    this.data,
  });

  RegisterModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  String? status;
  num? errors;
  Data? data;

  RegisterModel copyWith({
    String? status,
    num? errors,
    Data? data,
  }) =>
      RegisterModel(
        status: status ?? this.status,
        errors: errors ?? this.errors,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errors'] = errors;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// citizen_jawal : "99"
/// password : "$2y$10$czDjwhWUBUIQxp4eyAg.7eXkul54CzNtu6HNST3zpWtDSejlShhyu"
/// citizen_email : "mohrr@gmail.com"
/// citizen_national_id : "99"
/// updated_at : "2023-02-01T10:41:14.000000Z"
/// created_at : "2023-02-01T10:41:14.000000Z"
/// id : 15

class Data {
  Data({
    this.citizenJawal,
    this.password,
    this.citizenEmail,
    this.citizenNationalId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Data.fromJson(dynamic json) {
    citizenJawal = json['citizen_jawal'];
    password = json['password'];
    citizenEmail = json['citizen_email'];
    citizenNationalId = json['citizen_national_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  String? citizenJawal;
  String? password;
  String? citizenEmail;
  String? citizenNationalId;
  String? updatedAt;
  String? createdAt;
  num? id;

  Data copyWith({
    String? citizenJawal,
    String? password,
    String? citizenEmail,
    String? citizenNationalId,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) =>
      Data(
        citizenJawal: citizenJawal ?? this.citizenJawal,
        password: password ?? this.password,
        citizenEmail: citizenEmail ?? this.citizenEmail,
        citizenNationalId: citizenNationalId ?? this.citizenNationalId,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['citizen_jawal'] = citizenJawal;
    map['password'] = password;
    map['citizen_email'] = citizenEmail;
    map['citizen_national_id'] = citizenNationalId;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }
}
