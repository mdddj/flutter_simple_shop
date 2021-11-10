// To parse this JSON data, do
//
//     final orderAllData = orderAllDataFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Project imports:
import 'page_info_model.dart';

OrderAllData orderAllDataFromJson(String str) => OrderAllData.fromJson(json.decode(str));

String orderAllDataToJson(OrderAllData data) => json.encode(data.toJson());

class OrderAllData {
  OrderAllData({
    this.number,
    this.size,
    this.content,
    this.sort,
    this.numberOfElements,
    this.first,
    this.pageable,
    this.last,
    this.totalPages,
    this.totalElements,
    this.empty,
  });

  int? number;
  int? size;
  List<OrderAuditObject>? content;
  OrderAllDataSort? sort;
  int? numberOfElements;
  bool? first;
  Pageable? pageable;
  bool? last;
  int? totalPages;
  int? totalElements;
  bool? empty;

  factory OrderAllData.fromJson(Map<String, dynamic> json) => OrderAllData(
    number: json['number'],
    size: json['size'],
    content: List<OrderAuditObject>.from(json['content'].map((x) => OrderAuditObject.fromJson(x))),
    sort: OrderAllDataSort.fromJson(json['sort']),
    numberOfElements: json['numberOfElements'],
    first: json['first'],
    pageable: Pageable.fromJson(json['pageable']),
    last: json['last'],
    totalPages: json['totalPages'],
    totalElements: json['totalElements'],
    empty: json['empty'],
  );

  Map<String, dynamic> toJson() => {
    'number': number,
    'size': size,
    'content': List<dynamic>.from(content!.map((x) => x.toJson())),
    'sort': sort!.toJson(),
    'numberOfElements': numberOfElements,
    'first': first,
    'pageable': pageable!.toJson(),
    'last': last,
    'totalPages': totalPages,
    'totalElements': totalElements,
    'empty': empty,
  };
}

class OrderAuditObject {
  OrderAuditObject({
    this.id,
    this.createTime,
    this.orderid,
    this.userid,
    this.smoney,
    this.sdate,
    this.stip,
    this.stype,
    this.spic,
  });

  int? id;
  String? createTime;
  String? orderid;
  int? userid;
  String? smoney;
  String? sdate;
  String? stip;
  int? stype;
  String? spic;

  factory OrderAuditObject.fromJson(Map<String, dynamic> json) => OrderAuditObject(
    id: json['id'],
    createTime: json['createTime'].toString(),
    orderid: json['orderid'],
    userid: json['userid'],
    smoney: json['smoney'],
    sdate:json['sdate'].toString(),
    stip: json['stip'],
    stype: json['stype'],
    spic: json['spic'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'createTime': createTime,
    'orderid': orderid,
    'userid': userid,
    'smoney': smoney,
    'sdate': sdate,
    'stip': stip,
    'stype': stype,
    'spic': spic,
  };
}

