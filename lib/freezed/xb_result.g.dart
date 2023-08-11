// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xb_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_XbData _$$_XbDataFromJson(Map<String, dynamic> json) => _$_XbData(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => XbItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pageId: json['pageId'] as int? ?? 0,
      totalNum: json['totalNum'] as int? ?? 0,
    );

Map<String, dynamic> _$$_XbDataToJson(_$_XbData instance) => <String, dynamic>{
      'list': instance.list,
      'pageId': instance.pageId,
      'totalNum': instance.totalNum,
    };

_$_XbItem _$$_XbItemFromJson(Map<String, dynamic> json) => _$_XbItem(
      content: json['content'] as String? ?? '',
      contentApp: json['contentApp'] as String? ?? '',
      couponUrl: json['couponUrl'] as String? ?? '',
      createTime: json['createTime'] as String? ?? '',
      img: json['img'] as String? ?? '',
      itemId: json['itemId'] as String? ?? '',
      itemUrl: json['itemUrl'] as String? ?? '',
      msgId: json['msgId'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
      source: json['source'] as String? ?? '',
      sourceType: json['sourceType'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
      title: json['title'] as String? ?? '',
      updateTime: json['updateTime'] as String? ?? '',
    );

Map<String, dynamic> _$$_XbItemToJson(_$_XbItem instance) => <String, dynamic>{
      'content': instance.content,
      'contentApp': instance.contentApp,
      'couponUrl': instance.couponUrl,
      'createTime': instance.createTime,
      'img': instance.img,
      'itemId': instance.itemId,
      'itemUrl': instance.itemUrl,
      'msgId': instance.msgId,
      'remark': instance.remark,
      'source': instance.source,
      'sourceType': instance.sourceType,
      'tag': instance.tag,
      'title': instance.title,
      'updateTime': instance.updateTime,
    };
