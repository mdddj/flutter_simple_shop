import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@unfreezed
class MyFavoritesModel with _$MyFavoritesModel {
  factory MyFavoritesModel({
    required String amount,
    required String arrivalPrice,
    required int createTime,
    required String endTime,
    required int id,
    required String imageUrl,
    required String productId,
    required String title,
    required String type
}) = _MyFavoritesModel;
  factory MyFavoritesModel.fromJson(Map<String,Object?> json) => _$MyFavoritesModelFromJson(json);

}