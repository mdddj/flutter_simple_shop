part of '../../index.dart';

final textListAllProvider = FutureProvider(
  (ref) {
    return MyTextModeListApi()
        .request(RequestParams(showDefaultLoading: false));
  },
);
