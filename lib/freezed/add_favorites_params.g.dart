// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorites_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddFavoritesParams _$AddFavoritesParamsFromJson(Map<String, dynamic> json) =>
    _AddFavoritesParams(
      productid: json['productId'] as String? ?? '',
      type: json['type'] as String? ?? '',
      endtime: json['endTime'] as String? ?? '',
      imageurl: json['imageUrl'] as String? ?? '',
      title: json['title'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      arrivalprice: json['arrivalPrice'] as String? ?? '',
      createtime: json['createTime'] as String? ?? '',
    );

Map<String, dynamic> _$AddFavoritesParamsToJson(_AddFavoritesParams instance) =>
    <String, dynamic>{
      'productId': instance.productid,
      'type': instance.type,
      'endTime': instance.endtime,
      'imageUrl': instance.imageurl,
      'title': instance.title,
      'amount': instance.amount,
      'arrivalPrice': instance.arrivalprice,
      'createTime': instance.createtime,
    };
