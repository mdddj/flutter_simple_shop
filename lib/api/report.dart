part of api;

///添加举报api
class MyApiWithAddReport extends AppCoreApiWithT<Report> {
  MyApiWithAddReport() : super('/api/report/save',  HttpMethod.post);
  @override
  Report fromJson(Map<String, dynamic> json) => Report.fromJson(json);
}
