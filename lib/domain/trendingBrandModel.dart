import 'dart:convert';

class TrendingBrandModel {
  String id;
  String brandName;
  String image;

  TrendingBrandModel({
    required this.id,
    required this.brandName,
    required this.image,
  });

  // factory TrendingBrandModel.fromRawJson(String str) =>
  //     TrendingBrandModel.fromRawJson(jsonEncode(str));

  factory TrendingBrandModel.fromRawJson(String str) =>
      TrendingBrandModel.fromJson(json.decode(str));


  String toRawJson() => json.encode(toJson());

  factory TrendingBrandModel.fromJson(Map<String, dynamic> json) =>
      TrendingBrandModel(
        id: json["id"],
        brandName: json["brandName"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brandName": brandName,
        "image": image,
      };
}
