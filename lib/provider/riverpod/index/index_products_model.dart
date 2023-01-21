import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_models/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_products_model.freezed.dart';
part 'index_products_model.g.dart';

///首页模型
@unfreezed
class IndexProductsModel with _$IndexProductsModel {
   factory IndexProductsModel({
    required List<ProductModel> products,
    required int page
}) = _IndexProductsModel;

  factory IndexProductsModel.fromJson(Map<String, Object?> json)
  => _$IndexProductsModelFromJson(json);
}