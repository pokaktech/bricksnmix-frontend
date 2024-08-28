import 'dart:convert';

class BannerModel {
  String id;
  String brandName;
  String image;

  BannerModel({
    required this.id,
    required this.brandName,
    required this.image,
  });

  factory BannerModel.fromRawJson(String str) =>
      BannerModel.fromJson(json.decode(str));


  String toRawJson() => json.encode(toJson());

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      BannerModel(
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
