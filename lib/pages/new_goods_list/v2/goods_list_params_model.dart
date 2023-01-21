import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_models/models/product.dart';
import 'package:diox/diox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_list_params_model.freezed.dart';

@unfreezed
class GoodsListParamsModel with _$GoodsListParamsModel {
  factory GoodsListParamsModel(
      {required Category category,
      Subcategory? subcategor,
      @Default(DdSort.defaultSort) String sort,
      required List<ProductModel> products,
      required int page,
      required bool initLoading,
      CancelToken? cancelToken}) = _GoodsListParamsModel;
}
