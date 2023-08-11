part of api;

///猜你喜欢
class MyTaokeApiWithSimilarProducts extends AppCoreApi {
  MyTaokeApiWithSimilarProducts() : super('/tkapi/api/v1/dtk/apis/similar');
}


///   线报
///   GET /tkapi/api/v1/dtk/apis/speider
///   接口ID：90267022
///   接口地址：https://app.apifox.com/link/project/2906745/apis/api-90267022
class TkXianbaoApi extends AppCoreApiWithT<XbData>  {
  TkXianbaoApi():super('/tkapi/api/v1/dtk/apis/speider',HttpMethod.get);

  @override
  XbData fromJson(Map<String, dynamic> json) => XbData.fromJson(json);

}