// To parse this JSON data, do
//
//     final detailImage = detailImageFromJson(jsonString);

// Dart imports:
import 'dart:convert';

List<DetailImage> detailImageFromJson(String str) => List<DetailImage>.from(json.decode(str).map(DetailImage.fromJson));

String detailImageToJson(List<DetailImage> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailImage {
  DetailImage({
    this.img,
    this.hotAreaList,
    this.width,
    this.height,
  });

  String? img;
  List<dynamic>? hotAreaList;
  String? width;
  String? height;

  factory DetailImage.fromJson(dynamic json) => DetailImage(
    img: json['img'],
    hotAreaList: List<dynamic>.from(json['hotAreaList'].map((x) => x)),
    width: json['width'],
    height: json['height'],
  );

  Map<String, dynamic> toJson() => {
    'img': img,
    'hotAreaList': List<dynamic>.from(hotAreaList!.map((x) => x)),
    'width': width,
    'height': height,
  };
}
