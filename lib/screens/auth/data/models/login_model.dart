/// status : "success"
/// errors : 0
/// data : {"user":{"id":15,"town_id":"-1","first_name":null,"family_name":null,"citizen_name":"مواطن","avatar":null,"citizen_national_id":"99","citizen_jawal":"99","citizen_street_no":null,"citizen_home_no":null,"citizen_contact_type":null,"gender_id":null,"citizen_email":"mohrr@gmail.com","password":"$2y$10$czDjwhWUBUIQxp4eyAg.7eXkul54CzNtu6HNST3zpWtDSejlShhyu","status":"0","created_at":"2023-02-01T10:41:14.000000Z","updated_at":"2023-02-01T10:41:14.000000Z","deleted_at":null},"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiN2RlZWU5ZWYxYjQ1YjIwZGM2YzIyZDM0YzU5MWU4Zjc3OGM3ODEyZjJjNmI0OWI1ZmRhOTcxNWQ4MTVkMTcxOWZmYTM0Nzk5YjI3YTY3NzYiLCJpYXQiOjE2NzUzMjk4ODQuNzk0Nzk2LCJuYmYiOjE2NzUzMjk4ODQuNzk0Nzk5LCJleHAiOjE3MDY4NjU4ODQuNzkyMTgsInN1YiI6IjE1Iiwic2NvcGVzIjpbXX0.DT9CCCHnvY6LU2kspnFnDcZxJi-uI43n9a3nxwoVR4c2Z60GtrhbRMih7WfuLPY75O26OOLvzAtr4CbAW04oqmwmo5tucXfpqDpAPRNj3_d7Amfb8gC3RAmfjSqP-C-nOFX9GNSej0Wg08hXkWBPAqo-HvSbsMlWmQMFEfrgN66G-wYmugY9mT0zFde22dek62O3M569y_bQmh0T3agSkgA94hpx6v2S235PiwCCCJ1n78nLysDa6-Q1GxhCSYELJfvOO4fczkEWwXqgG_AE8VQwTfI61IQSZ5ScjRc9ymo0NcG6g4IPRYZ9ti3MMzOII6FOIwv6ep5WNRC5Jh6eIrCikAdguO1ZMeUsxnF-02LXxEPA-LOD-afAYYkAOBPaIWfzcLFo9dkIfiyjL-4yYdGtpR0r2J9Xvlu_g9wqnYH949AU5Bx3ijDLi6TN63dNm7M1NkMufT5RMSJ_tYEQCqi9eNDMuj133M_T2bDoAuNW_-O8YzcHuBZFDBPVMdm6eLy6c0LWGb-ZoMsPpQ3U9ktWxpbx76qPEamK1WR8u6TumnNlGmxh_LKx3SIyIZMhdhDKsS7rebmhKLvAORrDGz8MfQsJ63LIbcolwS0p_Wf9AdzfA2nwzz5oRv9RxI76SfYUgrFHOGZhrvTHWe7Yl6jwZaJbl_6mZSO2_sijpHc","verification":"false"}

class LoginModel {
  LoginModel({
    this.status,
    this.errors,
    this.data,
  });

  LoginModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  num? errors;
  Data? data;
  LoginModel copyWith({
    String? status,
    num? errors,
    Data? data,
  }) =>
      LoginModel(
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

/// user : {"id":15,"town_id":"-1","first_name":null,"family_name":null,"citizen_name":"مواطن","avatar":null,"citizen_national_id":"99","citizen_jawal":"99","citizen_street_no":null,"citizen_home_no":null,"citizen_contact_type":null,"gender_id":null,"citizen_email":"mohrr@gmail.com","password":"$2y$10$czDjwhWUBUIQxp4eyAg.7eXkul54CzNtu6HNST3zpWtDSejlShhyu","status":"0","created_at":"2023-02-01T10:41:14.000000Z","updated_at":"2023-02-01T10:41:14.000000Z","deleted_at":null}
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiN2RlZWU5ZWYxYjQ1YjIwZGM2YzIyZDM0YzU5MWU4Zjc3OGM3ODEyZjJjNmI0OWI1ZmRhOTcxNWQ4MTVkMTcxOWZmYTM0Nzk5YjI3YTY3NzYiLCJpYXQiOjE2NzUzMjk4ODQuNzk0Nzk2LCJuYmYiOjE2NzUzMjk4ODQuNzk0Nzk5LCJleHAiOjE3MDY4NjU4ODQuNzkyMTgsInN1YiI6IjE1Iiwic2NvcGVzIjpbXX0.DT9CCCHnvY6LU2kspnFnDcZxJi-uI43n9a3nxwoVR4c2Z60GtrhbRMih7WfuLPY75O26OOLvzAtr4CbAW04oqmwmo5tucXfpqDpAPRNj3_d7Amfb8gC3RAmfjSqP-C-nOFX9GNSej0Wg08hXkWBPAqo-HvSbsMlWmQMFEfrgN66G-wYmugY9mT0zFde22dek62O3M569y_bQmh0T3agSkgA94hpx6v2S235PiwCCCJ1n78nLysDa6-Q1GxhCSYELJfvOO4fczkEWwXqgG_AE8VQwTfI61IQSZ5ScjRc9ymo0NcG6g4IPRYZ9ti3MMzOII6FOIwv6ep5WNRC5Jh6eIrCikAdguO1ZMeUsxnF-02LXxEPA-LOD-afAYYkAOBPaIWfzcLFo9dkIfiyjL-4yYdGtpR0r2J9Xvlu_g9wqnYH949AU5Bx3ijDLi6TN63dNm7M1NkMufT5RMSJ_tYEQCqi9eNDMuj133M_T2bDoAuNW_-O8YzcHuBZFDBPVMdm6eLy6c0LWGb-ZoMsPpQ3U9ktWxpbx76qPEamK1WR8u6TumnNlGmxh_LKx3SIyIZMhdhDKsS7rebmhKLvAORrDGz8MfQsJ63LIbcolwS0p_Wf9AdzfA2nwzz5oRv9RxI76SfYUgrFHOGZhrvTHWe7Yl6jwZaJbl_6mZSO2_sijpHc"
/// verification : "false"

class Data {
  Data({
    this.user,
    this.accessToken,
    this.verification,
  });

  Data.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    accessToken = json['access_token'];
    verification = json['verification'];
  }
  User? user;
  String? accessToken;
  String? verification;
  Data copyWith({
    User? user,
    String? accessToken,
    String? verification,
  }) =>
      Data(
        user: user ?? this.user,
        accessToken: accessToken ?? this.accessToken,
        verification: verification ?? this.verification,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['access_token'] = accessToken;
    map['verification'] = verification;
    return map;
  }
}

/// id : 15
/// town_id : "-1"
/// first_name : null
/// family_name : null
/// citizen_name : "مواطن"
/// avatar : null
/// citizen_national_id : "99"
/// citizen_jawal : "99"
/// citizen_street_no : null
/// citizen_home_no : null
/// citizen_contact_type : null
/// gender_id : null
/// citizen_email : "mohrr@gmail.com"
/// password : "$2y$10$czDjwhWUBUIQxp4eyAg.7eXkul54CzNtu6HNST3zpWtDSejlShhyu"
/// status : "0"
/// created_at : "2023-02-01T10:41:14.000000Z"
/// updated_at : "2023-02-01T10:41:14.000000Z"
/// deleted_at : null

class User {
  User({
    this.id,
    this.townId,
    this.firstName,
    this.familyName,
    this.citizenName,
    this.avatar,
    this.citizenNationalId,
    this.citizenJawal,
    this.citizenStreetNo,
    this.citizenHomeNo,
    this.citizenContactType,
    this.genderId,
    this.citizenEmail,
    this.password,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  User.fromJson(dynamic json) {
    id = json['id'];
    townId = json['town_id'];
    firstName = json['first_name'];
    familyName = json['family_name'];
    citizenName = json['citizen_name'];
    avatar = json['avatar'];
    citizenNationalId = json['citizen_national_id'];
    citizenJawal = json['citizen_jawal'];
    citizenStreetNo = json['citizen_street_no'];
    citizenHomeNo = json['citizen_home_no'];
    citizenContactType = json['citizen_contact_type'];
    genderId = json['gender_id'];
    citizenEmail = json['citizen_email'];
    password = json['password'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
  num? id;
  String? townId;
  String? firstName;
  String? familyName;
  String? citizenName;
  dynamic avatar;
  String? citizenNationalId;
  String? citizenJawal;
  dynamic citizenStreetNo;
  dynamic citizenHomeNo;
  dynamic citizenContactType;
  dynamic genderId;
  String? citizenEmail;
  String? password;
  String? status;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  User copyWith({
    num? id,
    String? townId,
    dynamic firstName,
    dynamic familyName,
    String? citizenName,
    dynamic avatar,
    String? citizenNationalId,
    String? citizenJawal,
    dynamic citizenStreetNo,
    dynamic citizenHomeNo,
    dynamic citizenContactType,
    dynamic genderId,
    String? citizenEmail,
    String? password,
    String? status,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) =>
      User(
        id: id ?? this.id,
        townId: townId ?? this.townId,
        firstName: firstName ?? this.firstName,
        familyName: familyName ?? this.familyName,
        citizenName: citizenName ?? this.citizenName,
        avatar: avatar ?? this.avatar,
        citizenNationalId: citizenNationalId ?? this.citizenNationalId,
        citizenJawal: citizenJawal ?? this.citizenJawal,
        citizenStreetNo: citizenStreetNo ?? this.citizenStreetNo,
        citizenHomeNo: citizenHomeNo ?? this.citizenHomeNo,
        citizenContactType: citizenContactType ?? this.citizenContactType,
        genderId: genderId ?? this.genderId,
        citizenEmail: citizenEmail ?? this.citizenEmail,
        password: password ?? this.password,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['town_id'] = townId;
    map['first_name'] = firstName;
    map['family_name'] = familyName;
    map['citizen_name'] = citizenName;
    map['avatar'] = avatar;
    map['citizen_national_id'] = citizenNationalId;
    map['citizen_jawal'] = citizenJawal;
    map['citizen_street_no'] = citizenStreetNo;
    map['citizen_home_no'] = citizenHomeNo;
    map['citizen_contact_type'] = citizenContactType;
    map['gender_id'] = genderId;
    map['citizen_email'] = citizenEmail;
    map['password'] = password;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    return map;
  }
}
