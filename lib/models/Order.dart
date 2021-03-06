class Order {
  late int _id;
  late var _orderNo;
  late var _userId;
  late var _mosqueType;
  late String _status;
  late var _quantity;
  late var _mosqueId;
  late var _receiverId;
  late var _productId;
  late var _driverId;
  late String _image;
  late String _createdAt;
  late String _updatedAt;
  late var _finalPrice;
  late var _priceBeforeDiscount;
  late var _priceAfterDiscount;
  late String _productName;
  late String _productDescription;
  late var _countCartoons;
  late String _mosqueName;
  late String _receiverName = " ";
  late String _receiverPhone = " ";

  Order({
    int id = 0,
      var orderNo = "",
      var userId ="",
      var mosqueType="",
      String status="",
      var quantity="",
      var mosqueId="",
      var receiverId="",
      var productId="",
      var driverId="",
      String image="",
      String createdAt="",
      String updatedAt="",
      var finalPrice ="",
      var priceBeforeDiscount="",
      var priceAfterDiscount="",
      String productName="",
      String productDescription="",
      var countCartoons,
      String mosqueName="",
      String receiverName="",
      String receiverPhone=""
  }) {
    this._id = id;
    this._orderNo = orderNo;
    this._userId = userId;
    this._mosqueType = mosqueType;
    this._status = status;
    this._quantity = quantity;
    this._mosqueId = mosqueId;
    this._receiverId = receiverId;
    this._productId =productId;
    this._driverId = driverId;
    this._image = image;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._finalPrice =finalPrice;
    this._priceBeforeDiscount =priceBeforeDiscount;
    this._priceAfterDiscount = priceAfterDiscount;
    this._productName = productName;
    this._productDescription = productDescription;
    this._countCartoons = countCartoons;
    this._mosqueName = mosqueName;
    this._receiverName = receiverName;
    this._receiverPhone = receiverPhone;
  }



  Order.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _orderNo = json['order_no'];
    _userId = json['user_id'];
    _mosqueType = json['mosque_type'];
    _status = json['status'];
    _quantity = json['quantity'];
    _mosqueId = json['mosque_id'];
    _receiverId = json['receiver_id'];
    _productId = json['product_id'];
    _driverId = json['driver_id'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _finalPrice = json['final_price'];
    _priceBeforeDiscount = json['price_before_discount'];
    _priceAfterDiscount = json['price_after_discount'];
    _productName = json['product_name'];
    _productDescription = json['product_description'];
    _countCartoons = json['count_cartoons'];
    _mosqueName = json['mosque_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['order_no'] = this._orderNo;
    data['user_id'] = this._userId;
    data['mosque_type'] = this._mosqueType;
    data['status'] = this._status;
    data['quantity'] = this._quantity;
    data['mosque_id'] = this._mosqueId;
    data['receiver_id'] = this._receiverId;
    data['product_id'] = this._productId;
    data['driver_id'] = this._driverId;
    data['image'] = this._image;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['final_price'] = this._finalPrice;
    data['price_before_discount'] = this._priceBeforeDiscount;
    data['price_after_discount'] = this._priceAfterDiscount;
    data['product_name'] = this._productName;
    data['product_description'] = this._productDescription;
    data['count_cartoons'] = this._countCartoons;
    data['mosque_name'] = this._mosqueName;
    data['receiver_name'] = this._receiverName;
    data['receiver_phone'] = this._receiverPhone;
    return data;
  }

  Map<String, dynamic> toJsonWithout() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['order_no'] = this._orderNo;
    data['user_id'] = this._userId;
    data['mosque_type'] = this._mosqueType;
    data['status'] = this._status;
    data['quantity'] = this._quantity;
    data['mosque_id'] = this._mosqueId;
    data['receiver_id'] = this._receiverId;
    data['product_id'] = this._productId;
    data['driver_id'] = this._driverId;
    data['image'] = this._image;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['final_price'] = this._finalPrice;
    data['price_before_discount'] = this._priceBeforeDiscount;
    data['price_after_discount'] = this._priceAfterDiscount;
    data['product_name'] = this._productName;
    data['product_description'] = this._productDescription;
    data['count_cartoons'] = this._countCartoons;
    data['mosque_name'] = this._mosqueName;
    return data;
  }

  get orderNo => _orderNo;

  set orderNo(value) {
    _orderNo = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  get userId => _userId;

  set userId(value) {
    _userId = value;
  }

  get mosqueType => _mosqueType;

  set mosqueType(value) {
    _mosqueType = value;
  }

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  get quantity => _quantity;

  set quantity(value) {
    _quantity = value;
  }

  get mosqueId => _mosqueId;

  set mosqueId(value) {
    _mosqueId = value;
  }

  get receiverId => _receiverId;

  set receiverId(value) {
    _receiverId = value;
  }

  get productId => _productId;

  set productId(value) {
    _productId = value;
  }

  get driverId => _driverId;

  set driverId(value) {
    _driverId = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get createdAt => _createdAt;

  set createdAt(String value) {
    _createdAt = value;
  }

  String get updatedAt => _updatedAt;

  set updatedAt(String value) {
    _updatedAt = value;
  }

  get finalPrice => _finalPrice;

  set finalPrice(value) {
    _finalPrice = value;
  }

  get priceBeforeDiscount => _priceBeforeDiscount;

  set priceBeforeDiscount(value) {
    _priceBeforeDiscount = value;
  }

  get priceAfterDiscount => _priceAfterDiscount;

  set priceAfterDiscount(value) {
    _priceAfterDiscount = value;
  }

  String get productName => _productName;

  set productName(String value) {
    _productName = value;
  }

  String get productDescription => _productDescription;

  set productDescription(String value) {
    _productDescription = value;
  }

  get countCartoons => _countCartoons;

  set countCartoons(value) {
    _countCartoons = value;
  }

  String get mosqueName => _mosqueName;

  set mosqueName(String value) {
    _mosqueName = value;
  }

  String get receiverName => _receiverName;

  set receiverName(String value) {
    _receiverName = value;
  }

  String get receiverPhone => _receiverPhone;

  set receiverPhone(String value) {
    _receiverPhone = value;
  }

  @override
  String toString() {
    // return 'Order have _id: $_id, _orderNo: $_orderNo, _userId: $_userId, _mosqueType: $_mosqueType, _status: $_status, _quantity: $_quantity, _mosqueId: $_mosqueId, _receiverId: $_receiverId, _productId: $_productId, _driverId: $_driverId, _image: $_image, _createdAt: $_createdAt, _updatedAt: $_updatedAt, _finalPrice: $_finalPrice, _priceBeforeDiscount: $_priceBeforeDiscount, _priceAfterDiscount: $_priceAfterDiscount, _productName: $_productName, _productDescription: $_productDescription, _countCartoons: $_countCartoons, _mosqueName: $_mosqueName, _receiverName: $_receiverName, _receiverPhone: $_receiverPhone';
    // return '''
    //       $orderNo ?????? ?????? ???????????? ??????  ??????
    //           $productName  ?? ?????? ????????????
    //           $finalPrice ?????? ????????????
    //          ???????? ???????????? ?????? ???????????? ???????? ????????$mosqueId
    //        ?????????? $mosqueName
    //        ?????????????? ???????????? ???? ???????????? ?????????? ?????? ????????????????????
    //        ???????? ????????????  $mosqueType
    //        ?????????? ?????????? $status
    //        ???????? ???????????????? ???????? ??????????$userId
    //        ?????? ?????????????? $quantity
    //        ?????? ?????????? ?????????????? $receiverPhone
    // ''';

    return '''
       |  $orderNo ?????? ?????? ???????????? ?????? ???????????? : 
       |  $productName ?????????? ?????? ???????? : 
       |  $finalPrice ???????? ?????? ?????????? ?????????????? ???????????? : 
       |  $mosqueName ???????? ?????????? ?????????? ???????????? ???????? ?????????? : 
       |  $mosqueId ???????? ???????? ?????????? : 
       |  $mosqueType ???????? ???????????? ???????? 1 ???????????? ?????????? ???????????? ?? 0 ???????????? ?????????? ???????? : 
       |  $receiverPhone ???????? ?????????????? ?????????? ???? ?????? ?????????? ???????? ?????? ???????? : 
       |  $userId ???????? ???????? ?????? ???????????? ???????????????? :
       |  $quantity  ???????????????? ???????? ???????? ???????????? ?????? : 
       |  $status ???????????? ?????? ???????????? ???????????? : 
    ''';
  }
}
