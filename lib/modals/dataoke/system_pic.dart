import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

class SystemPic {
  SystemPic({
    required this.id,
    required this.url,
    required this.type,
    this.intro,
  });

  factory SystemPic.fromJson(dynamic jsonRes) => SystemPic(
        id: asT<int>(jsonRes['id'])!,
        url: asT<String>(jsonRes['url'])!,
        type: asT<int>(jsonRes['type'])!,
        intro: asT<String?>(jsonRes['intro']),
      );

  int id;
  String url;
  int type;
  String? intro;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'url': url,
        'type': type,
        'intro': intro,
      };

  SystemPic clone() => SystemPic.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
