import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_share.freezed.dart';
part 'product_share.g.dart';

@JsonEnum(valueField: 'type')
enum ProductShareType {
  @JsonValue('Tb')
  tb,
  @JsonValue("Pdd")
  pdd,
  @JsonValue("Jd")
  jd
}

///产品分享
@freezed
class ProductShare with _$ProductShare {
  const ProductShare._();

  const factory ProductShare({
      @JsonKey(name: 'id')  int? id,
      @JsonKey(name: 'title') @Default('')  String title,
      @JsonKey(name: 'price') @Default('')  String price,
      @JsonKey(name: 'image') @Default('')  String image,
      @JsonKey(name: 'productId') @Default('')  String productId,
      @JsonKey(name: 'type') @Default(ProductShareType.tb)  ProductShareType type,
    }) = _ProductShare;
  
  factory ProductShare.fromJson(Map<String, dynamic> json) => _$ProductShareFromJson(json);

}

