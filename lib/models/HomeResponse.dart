import 'Mosque.dart';

class HomeResponse {
  late bool status;
  late List<Mosque> data;
  late List<String> message;

  HomeResponse({required this.status, required this.data, required this.message});


  HomeResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Mosque>[];
      json['data'].forEach((v) {
        data.add(new Mosque.fromJson(v));
      });
    }
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
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.message != null) {
      data['message'] = this.message.map((v) => v).toList();
    }
    return data;
  }
}
