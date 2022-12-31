class JarasSiginupFoundation {
  bool? error;
  String? message;
  Data? data;
  int? statusCode;

  JarasSiginupFoundation(
      {this.error, this.message, this.data, this.statusCode});

  JarasSiginupFoundation.fromJson(Map<String, dynamic> json) {
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
  Client? client;

  Data({this.client});

  Data.fromJson(Map<String, dynamic> json) {
    client =
        json['client'] != null ? new Client.fromJson(json['client']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.client != null) {
      data['client'] = this.client!.toJson();
    }
    return data;
  }
}

class Client {
  String? nameAr;
  String? nameEn;
  String? companyNameAr;
  String? companyNameEn;
  String? email;
  String? phone;
  String? language;
  int? countryId;
  String? phoneCode;
  String? userType;
  int? isAdmin;
  int? clientId;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? token;

  Client(
      {this.nameAr,
      this.nameEn,
      this.companyNameAr,
      this.companyNameEn,
      this.email,
      this.phone,
      this.language,
      this.countryId,
      this.phoneCode,
      this.userType,
      this.isAdmin,
      this.clientId,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.token});

  Client.fromJson(Map<String, dynamic> json) {
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    companyNameAr = json['company_name_ar'];
    companyNameEn = json['company_name_en'];
    email = json['email'];
    phone = json['phone'];
    language = json['language'];
    countryId = json['country_id'];
    phoneCode = json['phone_code'];
    userType = json['user_type'];
    isAdmin = json['is_admin'];
    clientId = json['client_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['company_name_ar'] = this.companyNameAr;
    data['company_name_en'] = this.companyNameEn;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['country_id'] = this.countryId;
    data['phone_code'] = this.phoneCode;
    data['user_type'] = this.userType;
    data['is_admin'] = this.isAdmin;
    data['client_id'] = this.clientId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['token'] = this.token;
    return data;
  }
}
