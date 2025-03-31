import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'riverpod_model.freezed.dart';

part 'riverpod_model.g.dart';

@unfreezed
sealed class FavoritesStateModel with _$FavoritesStateModel {
  factory FavoritesStateModel({
    required List<MyFavoritesModel> favorites,
    required int page,
  }) = _FavoritesStateModel;

  factory FavoritesStateModel.fromJson(Map<String, Object?> map) =>
      _$FavoritesStateModelFromJson(map);
}
