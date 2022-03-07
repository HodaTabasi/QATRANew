import 'package:qatra_app/models/Order.dart';

class OrderResponse {
  late bool status;
  late List<Order> data;
  late List<String> message;

  OrderResponse({
    required this.status,
    required this.data,
    required this.message});


  OrderResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Order>[];
      json['data'].forEach((v) {
        data.add(new Order.fromJson(v));
      });
    }
    if (json['message'] != null) {
      message = [];
      // json['message'].forEach((v) {
      //   message.add(new Null.fromJson(v));
      // });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    // if (this.message != null) {
    //   data['message'] = this.message.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

