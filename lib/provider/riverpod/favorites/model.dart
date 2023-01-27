import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@unfreezed
class MyFavoritesModel with _$MyFavoritesModel {
  factory MyFavoritesModel({
    required String amount,
    required String arrivalPrice,
    required String createTime,
    required String endTime,
    required int id,
    required String imageUrl,
    required String productId,
    required String title,
    required String type
}) = _MyFavoritesModel;
  factory MyFavoritesModel.fromJson(dynamic json) => _$MyFavoritesModelFromJson(json);

}