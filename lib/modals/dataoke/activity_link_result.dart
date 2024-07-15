import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

class ActivityLinkResult {
  ActivityLinkResult({
    required this.terminalType,
    required this.pageStartTime,
    required this.pageName,
    required this.clickUrl,
    required this.tpwd,
    required this.longTpwd,
    required this.pageEndTime,
  });

  factory ActivityLinkResult.fromJson(Map<String, dynamic> jsonRes) {
    return ActivityLinkResult(
      terminalType: asT<String>(jsonRes['terminal_type'] ?? '')!,
      pageStartTime: asT<String>(jsonRes['page_start_time'] ?? '')!,
      pageName: asT<String>(jsonRes['page_name'] ?? '')!,
      clickUrl: asT<String>(jsonRes['click_url'])!,
      tpwd: asT<String>(jsonRes['Tpwd'] ?? '')!,
      longTpwd: asT<String>(jsonRes['longTpwd'])!,
      pageEndTime: asT<String>(jsonRes['page_end_time'] ?? '')!,
    );
  }

  String terminalType;
  String pageStartTime;
  String pageName;
  String clickUrl;
  String tpwd;
  String longTpwd;
  String pageEndTime;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'terminal_type': terminalType,
        'page_start_time': pageStartTime,
        'page_name': pageName,
        'click_url': clickUrl,
        'Tpwd': tpwd,
        'longTpwd': longTpwd,
        'page_end_time': pageEndTime,
      };

  ActivityLinkResult clone() => ActivityLinkResult.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
