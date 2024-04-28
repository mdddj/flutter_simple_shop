part of 'part.dart';

class NewApiByCarousel extends MyBaseApi<ZheCarouselResult> {
  NewApiByCarousel() : super('/api/zhe/carousel-list');

  @override
  ZheCarouselResult covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data'])
        case final Map<String, dynamic> json) {
      return ZheCarouselResult.fromJson(json);
    }
    return const ZheCarouselResult();
  }
}

///折淘客轮播图产品列表
class NewApiByCarouselProductsApi extends MyFullApi<List<ZheProduct>> {
  NewApiByCarouselProductsApi();

  static NewApiByCarouselProductsApi get instance =>
      getIt.get<NewApiByCarouselProductsApi>();

  @override
  List<ZheProduct> covertToModel(DartTypeModel data, RequestParams param) {
    debugPrint("data type : $data");
    if (data.whenOrNull(json: (value) => value['content'])
        case final List<dynamic> list when list.isNotEmpty) {
      debugPrint('返回数量:${list.length}');
      return List<ZheProduct>.from(list.map(ZheProduct.fromJson));
    }
    w('产品为空');
    return [];
  }
}
