// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyFavoritesModel _$$_MyFavoritesModelFromJson(Map<String, dynamic> json) =>
    _$_MyFavoritesModel(
      amount: json['amount'] as String,
      arrivalPrice: json['arrivalPrice'] as String,
      createTime: json['createTime'] as String,
      endTime: json['endTime'] as String,
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      productId: json['productId'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_MyFavoritesModelToJson(_$_MyFavoritesModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'arrivalPrice': instance.arrivalPrice,
      'createTime': instance.createTime,
      'endTime': instance.endTime,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'productId': instance.productId,
      'title': instance.title,
      'type': instance.type,
    };
