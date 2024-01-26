// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesStateModelImpl _$$FavoritesStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoritesStateModelImpl(
      favorites: (json['favorites'] as List<dynamic>)
          .map(MyFavoritesModel.fromJson)
          .toList(),
      page: json['page'] as int,
    );

Map<String, dynamic> _$$FavoritesStateModelImplToJson(
        _$FavoritesStateModelImpl instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
      'page': instance.page,
    };
