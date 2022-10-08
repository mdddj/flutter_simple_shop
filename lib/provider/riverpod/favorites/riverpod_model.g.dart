// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritesStateModel _$$_FavoritesStateModelFromJson(
        Map<String, dynamic> json) =>
    _$_FavoritesStateModel(
      favorites: (json['favorites'] as List<dynamic>)
          .map((e) => MyFavoritesModel.fromJson(e))
          .toList(),
      page: json['page'] as int,
    );

Map<String, dynamic> _$$_FavoritesStateModelToJson(
        _$_FavoritesStateModel instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
      'page': instance.page,
    };
