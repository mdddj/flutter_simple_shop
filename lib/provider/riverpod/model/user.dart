import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_user.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
sealed class UserDetailModal with _$UserDetailModal {
  const factory UserDetailModal({MyUser? user}) = _UserDetailModal;

  factory UserDetailModal.fromJson(Map<String, Object?> json) =>
      _$UserDetailModalFromJson(json);
}
