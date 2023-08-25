part of api;

///根据ID查找动态详情
class MyFindResourceByIdApi extends AppCoreApiWithT<Resource> {
  MyFindResourceByIdApi() : super('/api/app/resource/find-by-id', HttpMethod.get);

  @override
  Resource fromJson(Map<String, dynamic> json) {
    return Resource.fromJson(json);
  }
}

///获取动态评论接口
class MyResourceFindCommenApi extends AppCoreApi {
  MyResourceFindCommenApi() : super('/api/public/find-resource-comment');
}

///获取全部群组
////api/res/all
///
class MyResourceCategoryAllApi extends AppCoreApiWithListT<ResourceCategory> {
  MyResourceCategoryAllApi() : super('/api/res/all', HttpMethod.get);

  @override
  ResourceCategory fromJson(Map<String, dynamic> json) {
    return ResourceCategory.fromJson(json);
  }
}
