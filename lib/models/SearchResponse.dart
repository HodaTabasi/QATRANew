import 'package:qatra_app/models/Mosque.dart';

class SearchResponse {
  late bool status;
  late Data data;
  late List<String> message;

  SearchResponse({required this.status, required this.data, required this.message});

  SearchResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    if (json['message'] != null) {
      message = [];
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
  late List<Mosque> mosques;
  late String token;

  Data({required this.mosques, required this.token});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['mosques'] != null) {
      mosques = <Mosque>[];
      json['mosques'].forEach((v) {
        mosques.add(new Mosque.fromJson(v));
      });
    }
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mosques != null) {
      data['mosques'] = this.mosques.map((v) => v.toJson()).toList();
    }
    data['token'] = this.token;
    return data;
  }
}
