// To parse this JSON data, do
//
//     final JdOrPddCategory = JdOrPddCategoryFromJson(jsonString);

import 'dart:convert';

List<JdOrPddCategory> jdOrPddCategoryFromJson(String str) =>
    List<JdOrPddCategory>.from(json.decode(str).map(JdOrPddCategory.fromJson));

String jdOrPddCategoryToJson(List<JdOrPddCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JdOrPddCategory {
  JdOrPddCategory({
    required this.level,
    required this.name,
    required this.id,
    required this.parentId,
  });

  int level;
  String name;
  int id;
  int parentId;

  factory JdOrPddCategory.fromJson(dynamic json) => JdOrPddCategory(
        level: json["level"],
        name: json["name"],
        id: json["id"],
        parentId: json["parentId"],
      );

  Map<String, dynamic> toJson() => {
        "level": level,
        "name": name,
        "id": id,
        "parentId": parentId,
      };
}
