// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xb_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$XbDataImpl _$$XbDataImplFromJson(Map<String, dynamic> json) => _$XbDataImpl(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => XbItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pageId: (json['pageId'] as num?)?.toInt() ?? 0,
      totalNum: (json['totalNum'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$XbDataImplToJson(_$XbDataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'pageId': instance.pageId,
      'totalNum': instance.totalNum,
    };

_$XbItemImpl _$$XbItemImplFromJson(Map<String, dynamic> json) => _$XbItemImpl(
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

Map<String, dynamic> _$$XbItemImplToJson(_$XbItemImpl instance) =>
    <String, dynamic>{
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
