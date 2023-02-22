/// status : "success"
/// errors : 0
/// data : [{"id":1,"form_name_ar":"نموذج قضايا دولية","form_name_he":"نموذج قضايا دولية","description":null,"service_category_id":"1","form_html":"","html_build":null,"status":"1","image":null,"type":"1","deleted_at":null,"created_at":"2023-01-29T11:36:02.000000Z","updated_at":"2023-02-05T12:57:33.000000Z"}]

class ServicesDetailsModel {
  ServicesDetailsModel({
    this.status,
    this.errors,
    this.data,
  });

  ServicesDetailsModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ServicesDetails.fromJson(v));
      });
    }
  }
  String? status;
  num? errors;
  List<ServicesDetails>? data;
  ServicesDetailsModel copyWith({
    String? status,
    num? errors,
    List<ServicesDetails>? data,
  }) =>
      ServicesDetailsModel(
        status: status ?? this.status,
        errors: errors ?? this.errors,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errors'] = errors;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1
/// form_name_ar : "نموذج قضايا دولية"
/// form_name_he : "نموذج قضايا دولية"
/// description : null
/// service_category_id : "1"
/// form_html : ""
/// html_build : null
/// status : "1"
/// image : null
/// type : "1"
/// deleted_at : null
/// created_at : "2023-01-29T11:36:02.000000Z"
/// updated_at : "2023-02-05T12:57:33.000000Z"

class ServicesDetails {
  ServicesDetails({
    this.id,
    this.formNameAr,
    this.formNameHe,
    this.description,
    this.serviceCategoryId,
    this.formHtml,
    this.htmlBuild,
    this.status,
    this.image,
    this.type,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  ServicesDetails.fromJson(dynamic json) {
    id = json['id'];
    formNameAr = json['form_name_ar'];
    formNameHe = json['form_name_he'];
    description = json['description'];
    serviceCategoryId = json['service_category_id'];
    formHtml = json['url'];
    htmlBuild = json['html_build'];
    status = json['status'];
    image = json['image'];
    type = json['type'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? formNameAr;
  String? formNameHe;
  dynamic description;
  String? serviceCategoryId;
  String? formHtml;
  dynamic htmlBuild;
  String? status;
  dynamic image;
  String? type;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  ServicesDetails copyWith({
    num? id,
    String? formNameAr,
    String? formNameHe,
    dynamic description,
    String? serviceCategoryId,
    String? formHtml,
    dynamic htmlBuild,
    String? status,
    dynamic image,
    String? type,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      ServicesDetails(
        id: id ?? this.id,
        formNameAr: formNameAr ?? this.formNameAr,
        formNameHe: formNameHe ?? this.formNameHe,
        description: description ?? this.description,
        serviceCategoryId: serviceCategoryId ?? this.serviceCategoryId,
        formHtml: formHtml ?? this.formHtml,
        htmlBuild: htmlBuild ?? this.htmlBuild,
        status: status ?? this.status,
        image: image ?? this.image,
        type: type ?? this.type,
        deletedAt: deletedAt ?? this.deletedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['form_name_ar'] = formNameAr;
    map['form_name_he'] = formNameHe;
    map['description'] = description;
    map['service_category_id'] = serviceCategoryId;
    map['url'] = formHtml;
    map['html_build'] = htmlBuild;
    map['status'] = status;
    map['image'] = image;
    map['type'] = type;
    map['deleted_at'] = deletedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
