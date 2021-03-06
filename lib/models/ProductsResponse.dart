import 'package:qatra_app/models/Product.dart';

class products {
  late bool status;
  late List<Product> data;
  late List<String> message;

  products({
    required this.status,
    required this.data,
    required this.message});

  products.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Product>[];
      json['data'].forEach((v) {
        data.add(new Product.fromJson(v));
      });
    }
    // if (json['message'] != null) {
    //   message = new List<String>();
    //   json['message'].forEach((v) {
    //     message.add(new String.fromJson(v));
    //   });
    // }
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


