import 'package:flutter/cupertino.dart';
import 'package:qatra_app/models/User.dart';

class Loginjson {
  late bool status;
  late Data data;
  late List<String> message;

  Loginjson({required this.status, required this.data, required this.message});

  Loginjson.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    if (json['message'] != null) {
      message = <String>[];
      json['message'].forEach((v) {
        message.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    if (this.message != null) {
      data['message'] = this.message.map((v) => v).toList();
    }
    return data;
  }
}

class Data {
  late Token token;
  late User user;

  Data({required this.token, required this.user});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'] != null
        ? new Token.fromJson(json['token'])
        : new Token(accessToken: '', tokenType: '', expiresIn: 0);
    user = json['user'] != null
        ? new User.fromJson(json['user'])
        : new User(
            id: 0,
            firstName: 'firstName',
            lastName: 'lastName',
            email: 'email',
            emailVerifiedAt: 'emailVerifiedAt',
            phone: '',
            isPhoneVerified: 'isPhoneVerified',
            createdAt: '',
            updatedAt: '',
            gender: '',
            country: '',
            address: '',
            smsTokenValidation: '',
            isBan: false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.token != null) {
      data['token'] = this.token.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class Token {
  late String accessToken;
  late String tokenType;
  late int expiresIn;

  Token(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn});

  Token.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    return data;
  }
}
