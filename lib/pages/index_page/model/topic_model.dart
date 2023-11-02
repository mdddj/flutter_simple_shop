part of '../../index.dart';

List<MainTopic> mainTopicFromJson(String str) => List<MainTopic>.from(json.decode(str).map(MainTopic.fromJson));

String mainTopicToJson(List<MainTopic> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MainTopic {
  MainTopic({
    this.topicId,
    this.topicName,
    this.startTime,
    this.endTime,
    this.banner,
    this.topBanner,
  });

  int? topicId;
  String? topicName;
  DateTime? startTime;
  DateTime? endTime;
  List<String>? banner;
  List<String>? topBanner;

  factory MainTopic.fromJson(Map<String, dynamic> json) => MainTopic(
        topicId: json['topicId'],
        topicName: json['topicName'],
        startTime: DateTime.parse(json['startTime']),
        endTime: DateTime.parse(json['endTime']),
        banner: List<String>.from(json['banner'].map((x) => x)),
        topBanner: List<String>.from(json['topBanner'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'topicId': topicId,
        'topicName': topicName,
        'startTime': startTime!.toIso8601String(),
        'endTime': endTime!.toIso8601String(),
        'banner': List<dynamic>.from(banner!.map((x) => x)),
        'topBanner': List<dynamic>.from(topBanner!.map((x) => x)),
      };
}
