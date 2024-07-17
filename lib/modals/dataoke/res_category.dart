// To parse this JSON data, do
//
//     final resCategory = resCategoryFromMap(jsonString);

import 'dart:convert';

class ResCategory {
  ResCategory({
    this.announcement,
    this.description,
    required this.id,
    this.level,
    required this.logo,
    required this.name,
    this.navJsonString,
    this.parentNode,
    required this.type,
  });

  final dynamic announcement;
  final String? description;
  final int id;
  final int? level;
  final String logo;
  final String name;
  final String? navJsonString;
  final dynamic parentNode;
  final String type;

  factory ResCategory.fromJson(String str) =>
      ResCategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResCategory.fromMap(Map<String, dynamic> json) => ResCategory(
        announcement: json["announcement"],
        description: json["description"],
        id: json["id"],
        level: json["level"],
        logo: json["logo"],
        name: json["name"],
        navJsonString: json["navJsonString"],
        parentNode: json["parentNode"],
        type: json["type"],
      );

  Map<String, dynamic> toMap() => {
        "announcement": announcement,
        "description": description,
        "id": id,
        "level": level,
        "logo": logo,
        "name": name,
        "navJsonString": navJsonString,
        "parentNode": parentNode,
        "type": type,
      };
}
