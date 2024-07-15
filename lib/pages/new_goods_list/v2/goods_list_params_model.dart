import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modals/dataoke/category.dart';
import '../../../modals/dd/product.dart';
import '../../../modals/dd_sort.dart';

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
