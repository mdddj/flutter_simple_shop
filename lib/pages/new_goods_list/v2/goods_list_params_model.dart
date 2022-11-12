import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_list_params_model.freezed.dart';

@unfreezed
class GoodsListParamsModel with _$GoodsListParamsModel {
  factory GoodsListParamsModel(
      {required Category category,
      Subcategory? subcategor,
      @Default(DdSort.defaultSort) String sort,
      required List<Product> products,
      required int page,
      required bool initLoading,
      CancelToken? cancelToken}) = _GoodsListParamsModel;
}
