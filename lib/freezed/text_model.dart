import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_model.freezed.dart';

part 'text_model.g.dart';

@freezed
sealed class TextModel with _$TextModel {
  const TextModel._();

  const factory TextModel({
    @JsonKey(name: 'context') @Default('') String context,
    @JsonKey(name: 'id') @Default(0) num id,
    @JsonKey(name: 'indexData') @Default(Indexdata()) Indexdata indexData,
    @JsonKey(name: 'intro') @Default('') String intro,
    @JsonKey(name: 'isEncryptionText') @Default(false) bool isEncryptionText,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'updateDate') @Default('') String updateDate,
    @JsonKey(name: 'viewPassword') @Default('') String viewPassword,
  }) = _TextModel;

  factory TextModel.fromJson(dynamic json) => _$TextModelFromJson(json);
}

@freezed
sealed class Indexdata with _$Indexdata {
  const Indexdata._();

  const factory Indexdata({
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'key') @Default('') String key,
  }) = _Indexdata;

  factory Indexdata.fromJson(dynamic json) => _$IndexdataFromJson(json);
}
