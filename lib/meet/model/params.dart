
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.freezed.dart';
part 'params.g.dart';

@freezed
class AddMeetParams with _$AddMeetParams {
  const AddMeetParams._();

  const factory AddMeetParams({
      @JsonKey(name: 'id') @Default(0)  int id,
      @JsonKey(name: 'name') @Default('')  String name,
      @JsonKey(name: 'age') @Default(0)  int age,
      @JsonKey(name: 'soulName') @Default('')  String soulname,
      @JsonKey(name: 'soulCodeImage') @Default('')  String soulcodeimage,
      @JsonKey(name: 'mianjiInfo') @Default('')  String mianjiinfo,
      @JsonKey(name: 'location') @Default('')  String location,
      @JsonKey(name: 'toLocation') @Default('')  String tolocation,
      @JsonKey(name: 'aboutDiandian') @Default('')  String aboutdiandian,
      @JsonKey(name: 'state') @Default(0)  int state,
    }) = _AddMeetParams;
  
  factory AddMeetParams.fromJson(Map<String, dynamic> json) => _$AddMeetParamsFromJson(json);

}