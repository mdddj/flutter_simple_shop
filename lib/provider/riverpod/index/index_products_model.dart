import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modals/dd/product.dart';

part 'index_products_model.freezed.dart';

///首页模型
@freezed
class IndexProductsModel with _$IndexProductsModel {
  factory IndexProductsModel(
      {required List<ProductModel> products,
      required int page}) = _IndexProductsModel;
}
