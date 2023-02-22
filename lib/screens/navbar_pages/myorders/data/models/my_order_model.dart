/// status : "success"
/// errors : 0
/// data : [{"id":9,"created_at":"2023-02-09T12:53:47.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":8,"created_at":"2023-02-09T12:52:53.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":7,"created_at":"2023-02-09T12:51:24.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":6,"created_at":"2023-02-09T12:39:23.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":5,"created_at":"2023-02-09T12:36:50.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":4,"created_at":"2023-02-09T12:36:23.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}},{"id":3,"created_at":"2023-02-09T09:28:10.000000Z","form_id":"1","order_status":"1","form":{"id":1,"form_name_ar":"نموذج قضايا دولية"},"statusorder":{"id":1,"status_title":"جديد","status_color":"#84ff1f"}}]

class MyOrderModel {
  MyOrderModel({
    this.status,
    this.errors,
    this.data,
  });

  MyOrderModel.fromJson(dynamic json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(MyOrder.fromJson(v));
      });
    }
  }
  String? status;
  num? errors;
  List<MyOrder>? data;
  MyOrderModel copyWith({
    String? status,
    num? errors,
    List<MyOrder>? data,
  }) =>
      MyOrderModel(
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

/// id : 9
/// created_at : "2023-02-09T12:53:47.000000Z"
/// form_id : "1"
/// order_status : "1"
/// form : {"id":1,"form_name_ar":"نموذج قضايا دولية"}
/// statusorder : {"id":1,"status_title":"جديد","status_color":"#84ff1f"}

class MyOrder {
  MyOrder({
    this.id,
    this.createdAt,
    this.formId,
    this.orderStatus,
    this.form,
    this.statusorder,
  });

  MyOrder.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    formId = json['form_id'];
    orderStatus = json['order_status'];
    form = json['form'] != null ? Form.fromJson(json['form']) : null;
    statusorder = json['statusorder'] != null
        ? Statusorder.fromJson(json['statusorder'])
        : null;
  }
  num? id;
  String? createdAt;
  String? formId;
  String? description;
  String? orderStatus;
  Form? form;
  Statusorder? statusorder;
  MyOrder copyWith({
    num? id,
    String? createdAt,
    String? formId,
    String? orderStatus,
    Form? form,
    Statusorder? statusorder,
  }) =>
      MyOrder(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        formId: formId ?? this.formId,
        orderStatus: orderStatus ?? this.orderStatus,
        form: form ?? this.form,
        statusorder: statusorder ?? this.statusorder,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['form_id'] = formId;
    map['order_status'] = orderStatus;
    if (form != null) {
      map['form'] = form?.toJson();
    }
    if (statusorder != null) {
      map['statusorder'] = statusorder?.toJson();
    }
    return map;
  }
}

/// id : 1
/// status_title : "جديد"
/// status_color : "#84ff1f"

class Statusorder {
  Statusorder({
    this.id,
    this.statusTitle,
    this.statusColor,
  });

  Statusorder.fromJson(dynamic json) {
    id = json['id'];
    statusTitle = json['status_title'];
    statusColor = json['status_color'];
  }
  num? id;
  String? statusTitle;
  String? statusColor;
  Statusorder copyWith({
    num? id,
    String? statusTitle,
    String? statusColor,
  }) =>
      Statusorder(
        id: id ?? this.id,
        statusTitle: statusTitle ?? this.statusTitle,
        statusColor: statusColor ?? this.statusColor,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['status_title'] = statusTitle;
    map['status_color'] = statusColor;
    return map;
  }
}

/// id : 1
/// form_name_ar : "نموذج قضايا دولية"

class Form {
  Form({
    this.id,
    this.formNameAr,
    this.description,
  });

  Form.fromJson(dynamic json) {
    id = json['id'];
    formNameAr = json['form_name_ar'];
    description = json['description'];
  }
  num? id;
  String? formNameAr;
  String? description;
  Form copyWith({
    num? id,
    String? formNameAr,
    String? description,
  }) =>
      Form(
          id: id ?? this.id,
          formNameAr: formNameAr ?? this.formNameAr,
          description: description ?? this.description);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['form_name_ar'] = formNameAr;
    map['description'] = description;
    return map;
  }
}
