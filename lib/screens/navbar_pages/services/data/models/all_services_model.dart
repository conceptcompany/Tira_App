/// status : "success"
/// errors : 0
/// data : [{"id":1,"category_name_ar":"قضايا دولية","category_name_he":"قضايا دولية","image":"/uploads/photos/1/Untitled-1.png","typeForm":"8","supervisors":"['1','21','26']","created_at":null,"updated_at":"2023-01-29T11:09:48.000000Z","deleted_at":null,"status":"1"},{"id":2,"category_name_ar":"سفارات","category_name_he":"سفارات","image":"/uploads/photos/1/6682425.png","typeForm":"8","supervisors":"['1','21','26']","created_at":null,"updated_at":"2023-01-29T10:15:03.000000Z","deleted_at":null,"status":"1"},{"id":3,"category_name_ar":"مجالس محلية وبلديات","category_name_he":"مجالس محلية وبلديات","image":"/uploads/photos/1/Cabinet.png","typeForm":"8","supervisors":"['1','21','26']","created_at":null,"updated_at":"2023-01-29T10:18:00.000000Z","deleted_at":null,"status":"1"},{"id":4,"category_name_ar":"أرض ومسكن","category_name_he":"أرض ومسكن","image":"/uploads/photos/1/land.jpg","typeForm":"8","supervisors":"['1','22']","created_at":null,"updated_at":"2023-01-29T10:19:49.000000Z","deleted_at":null,"status":"1"},{"id":5,"category_name_ar":"تخطيط وبناء","category_name_he":"تخطيط وبناء","image":"/uploads/photos/1/istockphoto-664349854-170667a.jpg","typeForm":"8","supervisors":"['1','22']","created_at":null,"updated_at":"2023-01-29T10:21:01.000000Z","deleted_at":null,"status":"1"},{"id":6,"category_name_ar":"تربية وتعليم","category_name_he":"تربية وتعليم","image":"/uploads/photos/1/learn.png","typeForm":"8","supervisors":"['1','22']","created_at":null,"updated_at":"2023-01-29T10:33:13.000000Z","deleted_at":null,"status":"1"},{"id":7,"category_name_ar":"رياضة","category_name_he":"رياضة","image":"/uploads/photos/1/sport.png","typeForm":"8","supervisors":"['1','22']","created_at":null,"updated_at":"2023-01-29T10:24:04.000000Z","deleted_at":null,"status":"1"},{"id":8,"category_name_ar":"النقب","category_name_he":"النقب","image":"/uploads/photos/1/nakab.png","typeForm":"8","supervisors":"['1','23']","created_at":null,"updated_at":"2023-01-29T10:31:45.000000Z","deleted_at":null,"status":"1"},{"id":9,"category_name_ar":"الصحة","category_name_he":"الصحة","image":"/uploads/photos/1/health.png","typeForm":"8","supervisors":"['1','24']","created_at":null,"updated_at":"2023-01-29T10:34:51.000000Z","deleted_at":null,"status":"1"},{"id":10,"category_name_ar":"تعليم عالي","category_name_he":"تعليم عالي","image":"/uploads/photos/1/icons/education (1).png","typeForm":"8","supervisors":"['1','24']","created_at":null,"updated_at":"2023-01-29T10:33:31.000000Z","deleted_at":null,"status":"1"},{"id":11,"category_name_ar":"وزارة الداخلية","category_name_he":"وزارة الداخلية","image":"/uploads/photos/1/police.png","typeForm":"8","supervisors":"['1','24']","created_at":null,"updated_at":"2023-01-29T10:37:51.000000Z","deleted_at":null,"status":"1"},{"id":12,"category_name_ar":"علوم وتكنولوجيا","category_name_he":"علوم وتكنولوجيا","image":"/uploads/photos/1/download.png","typeForm":"8","supervisors":"['1','25']","created_at":null,"updated_at":"2023-01-29T10:38:38.000000Z","deleted_at":null,"status":"1"}]

class AllServicesModel {
  AllServicesModel({
    this.status,
    this.errors,
    this.data,
  });

  AllServicesModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ServicesModel.fromJson(v));
      });
    }
  }
  String? status;
  num? errors;
  List<ServicesModel>? data;
  AllServicesModel copyWith({
    String? status,
    num? errors,
    List<ServicesModel>? data,
  }) =>
      AllServicesModel(
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
/// category_name_ar : "قضايا دولية"
/// category_name_he : "قضايا دولية"
/// image : "/uploads/photos/1/Untitled-1.png"
/// typeForm : "8"
/// supervisors : "['1','21','26']"
/// created_at : null
/// updated_at : "2023-01-29T11:09:48.000000Z"
/// deleted_at : null
/// status : "1"

class ServicesModel {
  ServicesModel({
    this.id,
    this.categoryNameAr,
    this.categoryNameHe,
    this.image,
    this.typeForm,
    this.supervisors,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.status,
  });

  ServicesModel.fromJson(dynamic json) {
    id = json['id'];
    categoryNameAr = json['category_name_ar'];
    categoryNameHe = json['category_name_he'];
    image = json['image'];
    typeForm = json['typeForm'];
    supervisors = json['supervisors'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    status = json['status'];
  }
  num? id;
  String? categoryNameAr;
  String? categoryNameHe;
  String? image;
  String? typeForm;
  String? supervisors;
  dynamic createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? status;
  ServicesModel copyWith({
    num? id,
    String? categoryNameAr,
    String? categoryNameHe,
    String? image,
    String? typeForm,
    String? supervisors,
    dynamic createdAt,
    String? updatedAt,
    dynamic deletedAt,
    String? status,
  }) =>
      ServicesModel(
        id: id ?? this.id,
        categoryNameAr: categoryNameAr ?? this.categoryNameAr,
        categoryNameHe: categoryNameHe ?? this.categoryNameHe,
        image: image ?? this.image,
        typeForm: typeForm ?? this.typeForm,
        supervisors: supervisors ?? this.supervisors,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        status: status ?? this.status,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_name_ar'] = categoryNameAr;
    map['category_name_he'] = categoryNameHe;
    map['image'] = image;
    map['typeForm'] = typeForm;
    map['supervisors'] = supervisors;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    map['status'] = status;
    return map;
  }

  @override
  String toString() {
    return 'ServicesModel{id: $id, categoryNameAr: $categoryNameAr, categoryNameHe: $categoryNameHe, image: $image, typeForm: $typeForm, supervisors: $supervisors, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, status: $status}';
  }
}
