import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

class ActivityLinkParam {
  ActivityLinkParam({
    this.pid,
    required this.promotionSceneId,
    this.relationId,
    this.unionId,
  });

  factory ActivityLinkParam.fromJson(Map<String, dynamic> jsonRes) =>
      ActivityLinkParam(
        pid: asT<String?>(jsonRes['pid']),
        promotionSceneId: asT<String>(jsonRes['promotionSceneId'])!,
        relationId: asT<String?>(jsonRes['relationId']),
        unionId: asT<String?>(jsonRes['unionId']),
      );

  String? pid;
  String promotionSceneId;
  String? relationId;
  String? unionId;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'pid': pid,
        'promotionSceneId': promotionSceneId,
        'relationId': relationId,
        'unionId': unionId,
      };

  ActivityLinkParam clone() => ActivityLinkParam.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
