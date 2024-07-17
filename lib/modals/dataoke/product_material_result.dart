// To parse this JSON data, do
//
//     final productMaterialResult = productMaterialResultFromJson(jsonString);

import 'dart:convert';

List<ProductMaterialResult> productMaterialResultFromJson(String str) =>
    List<ProductMaterialResult>.from(
        json.decode(str).map(ProductMaterialResult.fromJson));

String productMaterialResultToJson(List<ProductMaterialResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductMaterialResult {
  ProductMaterialResult({
    this.headImg,
    this.createTime,
    this.materialList,
    this.name,
    this.hot,
    this.newest,
  });

  String? headImg;
  DateTime? createTime;
  List<MaterialList>? materialList;
  String? name;
  int? hot;
  int? newest;

  factory ProductMaterialResult.fromJson(dynamic json) => ProductMaterialResult(
        headImg: json["headImg"],
        createTime: DateTime.parse(json["createTime"]),
        materialList: List<MaterialList>.from(
            json["materialList"].map(MaterialList.fromJson)),
        name: json["name"],
        hot: json["hot"],
        newest: json["newest"],
      );

  Map<String, dynamic> toJson() => {
        "headImg": headImg,
        "createTime": createTime!.toIso8601String(),
        "materialList":
            List<dynamic>.from(materialList!.map((x) => x.toJson())),
        "name": name,
        "hot": hot,
        "newest": newest,
      };
}

class MaterialList {
  MaterialList({
    this.type,
    this.content,
  });

  int? type;
  String? content;

  factory MaterialList.fromJson(dynamic json) => MaterialList(
        type: json["type"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "content": content,
      };
}
