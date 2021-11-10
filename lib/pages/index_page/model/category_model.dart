// To parse this JSON data, do
//
//     final mainCategory = mainCategoryFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/cupertino.dart';

List<MainCategory> mainCategoryFromJson(String str) => List<MainCategory>.from(json.decode(str).map((x) => MainCategory.fromJson(x)));

String mainCategoryToJson(List<MainCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MainCategory {
  MainCategory({
    this.cid,
    this.cname,
    this.cpic,
    this.subcategories,
  });

  int? cid;
  String? cname;
  String? cpic;
  GlobalKey key = GlobalKey();
  List<Subcategory>? subcategories;

  factory MainCategory.fromJson(Map<String, dynamic> json) => MainCategory(
    cid: json['cid'],
    cname: json['cname'],
    cpic: json['cpic'],
    subcategories: List<Subcategory>.from(json['subcategories'].map((x) => Subcategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'cid': cid,
    'cname': cname,
    'cpic': cpic,
    'subcategories': List<dynamic>.from(subcategories!.map((x) => x.toJson())),
  };
}

class Subcategory {
  Subcategory({
    this.subcid,
    this.subcname,
    this.scpic,
  });

  int? subcid;
  String? subcname;
  String? scpic;

  factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
    subcid: json['subcid'],
    subcname: json['subcname'],
    scpic: json['scpic'],
  );

  Map<String, dynamic> toJson() => {
    'subcid': subcid,
    'subcname': subcname,
    'scpic': scpic,
  };
}
