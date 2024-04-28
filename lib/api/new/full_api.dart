part of 'part.dart';

abstract class MyFullApi<T> extends MyBaseApi<T> {
  MyFullApi() : super('', httpMethod: HttpMethod.get);
}
