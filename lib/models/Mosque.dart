
class Mosque {
  late int? id;
  late String? name;
  late var lat;
  late var lng;
  late String? type;
  late String? isHidden;
  late String? createdAt;
  late String? updatedAt;
  late var address;
  late var rating;
  late var userRatingsTotal;
  late var googlePlaceId;

  Mosque(
      {
        this.id = 0,
        this.name = "",
        this.lat = 0.0,
        this.lng = 0.0,
        this.type = "",
        this.isHidden = "",
        this.createdAt= "",
        this.updatedAt ="",
        this.address = "",
        this.rating = "",
        this.userRatingsTotal = "",
        this.googlePlaceId = ""});

  Mosque.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
    type = json['type'];
    isHidden = json['is_hidden'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    address = json['address'];
    rating = json['rating'];
    userRatingsTotal = json['user_ratings_total'];
    googlePlaceId = json['google_place_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['type'] = this.type;
    data['is_hidden'] = this.isHidden;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['address'] = this.address;
    data['rating'] = this.rating;
    data['user_ratings_total'] = this.userRatingsTotal;
    data['google_place_id'] = this.googlePlaceId;
    return data;
  }
}