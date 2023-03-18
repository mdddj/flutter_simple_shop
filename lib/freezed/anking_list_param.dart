import 'package:freezed_annotation/freezed_annotation.dart';

part 'anking_list_param.freezed.dart';
part 'anking_list_param.g.dart';


@freezed
class AnkingListParam with _$AnkingListParam {
  const AnkingListParam._();

  const factory AnkingListParam({
      @JsonKey(name: 'rank') @Default('')  String rank,
      @JsonKey(name: 'cid') @Default('')  String cid,
    }) = _AnkingListParam;
  
  factory AnkingListParam.fromJson(Map<String, dynamic> json) => _$AnkingListParamFromJson(json);

}

