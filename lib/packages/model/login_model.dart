class JarasLoginData {
  bool? error;
  String? message;
  Data? data;
  int? statusCode;

  JarasLoginData({this.error, this.message, this.data, this.statusCode});

  JarasLoginData.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status_code'] = this.statusCode;
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? isAdmin;
  String? nameAr;
  String? nameEn;
  String? countryId;
  Null? parentId;
  String? clientId;
  String? email;
  String? phoneCode;
  String? phone;
  String? companyNameAr;
  String? companyNameEn;
  String? userType;
  Null? departmentId;
  Null? subDepartmentId;
  String? language;
  String? status;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.isAdmin,
      this.nameAr,
      this.nameEn,
      this.countryId,
      this.parentId,
      this.clientId,
      this.email,
      this.phoneCode,
      this.phone,
      this.companyNameAr,
      this.companyNameEn,
      this.userType,
      this.departmentId,
      this.subDepartmentId,
      this.language,
      this.status,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isAdmin = json['is_admin'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    countryId = json['country_id'];
    parentId = json['parent_id'];
    clientId = json['client_id'];
    email = json['email'];
    phoneCode = json['phone_code'];
    phone = json['phone'];
    companyNameAr = json['company_name_ar'];
    companyNameEn = json['company_name_en'];
    userType = json['user_type'];
    departmentId = json['department_id'];
    subDepartmentId = json['sub_department_id'];
    language = json['language'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_admin'] = this.isAdmin;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['country_id'] = this.countryId;
    data['parent_id'] = this.parentId;
    data['client_id'] = this.clientId;
    data['email'] = this.email;
    data['phone_code'] = this.phoneCode;
    data['phone'] = this.phone;
    data['company_name_ar'] = this.companyNameAr;
    data['company_name_en'] = this.companyNameEn;
    data['user_type'] = this.userType;
    data['department_id'] = this.departmentId;
    data['sub_department_id'] = this.subDepartmentId;
    data['language'] = this.language;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
