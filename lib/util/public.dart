part of 'index.dart';

Color getColor(String rgb) {
  var colorsRgb = rgb.split(',');
  return Color.fromRGBO(int.parse(colorsRgb[0]), int.parse(colorsRgb[1]), int.parse(colorsRgb[2]), 1);
}

void actionLog(String action, String key, dynamic value) {
  wtfLog({"操作": action, key: value});
}

Future<void> appLaunchUrl(String url, {String? failMessage}) async {
  final uri = Uri.tryParse(url);
  if (uri != null) {
    if (!await launchUrl(uri)) {
      toast(failMessage ?? '无法访问:$url');
      throw Exception('无法访问$url');
    }
  }
}
