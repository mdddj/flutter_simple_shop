import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'jpa_page.dart';

part 'simple_result.freezed.dart';

part 'simple_result.g.dart';

@freezed
sealed class SimpleResult with _$SimpleResult {
  const SimpleResult._();

  const factory SimpleResult({
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'state') @Default(0) int state,
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'type') @Default(ResultType.none) ResultType type,
    @JsonKey(name: 'data') dynamic data,
  }) = _SimpleResult;

  factory SimpleResult.fromJson(Map<String, dynamic> json) =>
      _$SimpleResultFromJson(json);
}

@JsonEnum(valueField: 'type')
enum ResultType {
  @JsonValue("Toast")
  toast,
  @JsonValue("Dialog")
  dialog,
  @JsonValue("Notice")
  notice,
  @JsonValue("None")
  none,
  @JsonValue("FinalToast")
  finalToast,
  @JsonValue("FinalDialog")
  finalDialog,
}

class JpaDataWrapper {
  final Map<String, dynamic> json;

  JpaDataWrapper(this.json);

  SimpleResult get result {
    return SimpleResult.fromJson(json);
  }

  JpaPage get jpaData {
    final pageData = JpaPage.fromJson(result.data);
    return pageData;
  }

  IList<dynamic> get content => jpaData.content;
}
