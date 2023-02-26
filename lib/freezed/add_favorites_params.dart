import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_favorites_params.freezed.dart';
part 'add_favorites_params.g.dart';


@freezed
class AddFavoritesParams with _$AddFavoritesParams {
  const factory AddFavoritesParams({
      @JsonKey(name: 'productId') @Default('')  String productid,
      @JsonKey(name: 'type') @Default('')  String type,
      @JsonKey(name: 'endTime') @Default('')  String endtime,
      @JsonKey(name: 'imageUrl') @Default('')  String imageurl,
      @JsonKey(name: 'title') @Default('')  String title,
      @JsonKey(name: 'amount') @Default('')  String amount,
      @JsonKey(name: 'arrivalPrice') @Default('')  String arrivalprice,
      @JsonKey(name: 'createTime') @Default('')  String createtime,
    }) = _AddFavoritesParams;
  
  factory AddFavoritesParams.fromJson(Map<String, dynamic> json) => _$AddFavoritesParamsFromJson(json);
}

