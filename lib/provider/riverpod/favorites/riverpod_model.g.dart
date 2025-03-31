// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritesStateModel _$FavoritesStateModelFromJson(Map<String, dynamic> json) =>
    _FavoritesStateModel(
      favorites:
          (json['favorites'] as List<dynamic>)
              .map(MyFavoritesModel.fromJson)
              .toList(),
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$FavoritesStateModelToJson(
  _FavoritesStateModel instance,
) => <String, dynamic>{'favorites': instance.favorites, 'page': instance.page};
