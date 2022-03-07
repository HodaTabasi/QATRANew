class SettingResponse {
  late bool status;
  late Data data;
  late List<String> message;

  SettingResponse({
    required this.status,
    required this.data,
    required this.message});

  SettingResponse.fromJson(Map<String, dynamic> json) {
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
  late String value;

  Data({required this.value});

  Data.fromJson(Map<String, dynamic> json) {
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    return data;
  }
}
