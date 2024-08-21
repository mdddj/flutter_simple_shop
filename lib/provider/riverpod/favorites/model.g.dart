// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFavoritesModelImpl _$$MyFavoritesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFavoritesModelImpl(
      amount: json['amount'] as String,
      arrivalPrice: json['arrivalPrice'] as String,
      createTime: json['createTime'] as String,
      endTime: json['endTime'] as String,
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      productId: json['productId'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$MyFavoritesModelImplToJson(
        _$MyFavoritesModelImpl instance) =>
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
