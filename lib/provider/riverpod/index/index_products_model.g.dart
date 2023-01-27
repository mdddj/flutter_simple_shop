// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IndexProductsModel _$$_IndexProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_IndexProductsModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e))
          .toList(),
      page: json['page'] as int,
    );

Map<String, dynamic> _$$_IndexProductsModelToJson(
        _$_IndexProductsModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'page': instance.page,
    };
