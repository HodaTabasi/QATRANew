class Product {
  late int id;
  late String name;
  late String description;
  late var price;
  late var discount;
  late String startDiscountDate;
  late String endDiscountDate;
  late var countCartoons;
  late bool isHidden;
  late var minPurchase;
  late String createdAt;
  late String updatedAt;

  Product(
      {
        required this.id,
       required this.name,
       required this.description,
       required this.price,
       required this.discount,
       required this.startDiscountDate,
       required this.endDiscountDate,
       required this.countCartoons,
       required this.isHidden,
       required this.createdAt,
       required this.minPurchase,
       required this.updatedAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    discount = json['discount'];
    startDiscountDate = json['start_discount_date'];
    endDiscountDate = json['end_discount_date'];
    countCartoons = json['count_cartoons'];
    isHidden = json['is_hidden'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    minPurchase = json['min_purchase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['start_discount_date'] = this.startDiscountDate;
    data['end_discount_date'] = this.endDiscountDate;
    data['count_cartoons'] = this.countCartoons;
    data['is_hidden'] = this.isHidden;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['min_purchase'] = this.minPurchase;
    return data;
  }
}