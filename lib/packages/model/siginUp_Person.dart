class JarasSiginupModel {
  bool? error;
  String? message;
  Data? data;
  int? statusCode;

  JarasSiginupModel({this.error, this.message, this.data, this.statusCode});

  JarasSiginupModel.fromJson(Map<String, dynamic> json) {
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
  String? userType;
  String? email;
  String? phone;
  String? language;
  int? countryId;
  String? phoneCode;
  int? isAdmin;
  int? clientId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Client(
      {this.nameAr,
      this.nameEn,
      this.userType,
      this.email,
      this.phone,
      this.language,
      this.countryId,
      this.phoneCode,
      this.isAdmin,
      this.clientId,
      this.updatedAt,
      this.createdAt,
      this.id});

  Client.fromJson(Map<String, dynamic> json) {
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    userType = json['user_type'];
    email = json['email'];
    phone = json['phone'];
    language = json['language'];
    countryId = json['country_id'];
    phoneCode = json['phone_code'];
    isAdmin = json['is_admin'];
    clientId = json['client_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['user_type'] = this.userType;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['country_id'] = this.countryId;
    data['phone_code'] = this.phoneCode;
    data['is_admin'] = this.isAdmin;
    data['client_id'] = this.clientId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
