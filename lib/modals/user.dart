

// Dart imports:
import 'dart:convert';

// Project imports:
import 'ff_convert_convert_util.dart';

class User {
  User({
    required this.id,
    required this.loginNumber,
    required this.nickName,
    required this.email,
    required this.picture,
    required this.phone,
    required this.loginTime,
    required this.type,
    required this.roles,
    required this.resourcesCategories,
    required this.status,
  });

  factory User.fromJson(Map<String, dynamic> jsonRes) {
    final roles = jsonRes['roles'] is List ? <Roles>[] : null;
    if (roles != null) {
      for (final dynamic item in jsonRes['roles']!) {
        if (item != null) {
          tryCatch(() {
            roles.add(Roles.fromJson(asT<Map<String, dynamic>>(item)!));
          });
        }
      }
    }

    final resourcesCategories =
    jsonRes['resourcesCategories'] is List ? <Object>[] : null;
    if (resourcesCategories != null) {
      for (final dynamic item in jsonRes['resourcesCategories']!) {
        if (item != null) {
          tryCatch(() {
            resourcesCategories.add(asT<Object>(item)!);
          });
        }
      }
    }
    return User(
      id: asT<int>(jsonRes['id'])!,
      loginNumber: asT<String>(jsonRes['loginNumber'])!,
      nickName: asT<String>(jsonRes['nickName'])!,
      email: asT<String>(jsonRes['email']??'')!,
      picture: asT<String>(jsonRes['picture'])!,
      phone: asT<String>(jsonRes['phone']??'')!,
      loginTime: asT<String>(jsonRes['loginTime']??'')!,
      type: asT<int>(jsonRes['type'])!,
      roles: roles!,
      resourcesCategories: resourcesCategories!,
      status: asT<int>(jsonRes['status'])!,
    );
  }

  int id;
  String loginNumber;
  String nickName;
  Object email;
  String picture;
  Object phone;
  Object loginTime;
  int type;
  List<Roles> roles;
  List<Object> resourcesCategories;
  int status;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'loginNumber': loginNumber,
    'nickName': nickName,
    'email': email,
    'picture': picture,
    'phone': phone,
    'loginTime': loginTime,
    'type': type,
    'roles': roles,
    'resourcesCategories': resourcesCategories,
    'status': status,
  };

  User clone() =>
      User.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Roles {
  Roles({
    required this.id,
    required this.name,
    required this.description,
    required this.createDate,
    required this.status,
    required this.roleSort,
  });

  factory Roles.fromJson(Map<String, dynamic> jsonRes) => Roles(
    id: asT<int>(jsonRes['id'])!,
    name: asT<String>(jsonRes['name'])!,
    description: asT<String>(jsonRes['description'])!,
    createDate: asT<int>(jsonRes['createDate'])!,
    status: asT<int>(jsonRes['status'])!,
    roleSort: asT<int>(jsonRes['roleSort'])!,
  );

  int id;
  String name;
  String description;
  int createDate;
  int status;
  int roleSort;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'description': description,
    'createDate': createDate,
    'status': status,
    'roleSort': roleSort,
  };

  Roles clone() =>
      Roles.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
