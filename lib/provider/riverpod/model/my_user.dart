import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';

part 'my_user.g.dart';

const anonymousUser = MyUser(id: 0, nickName: "匿名用户");

extension UserEx on MyUser {
  ///显示的昵称
  String get getShowUserName {
    if (nickName.isNotEmpty) {
      return nickName;
    }
    return "未设置昵称";
  }

  ///显示的头像
  Widget getAvatar({double size = 20}) {
    if (picture.isEmpty) {
      return SizedBox(
        width: size,
        height: size,
        child: CircleAvatar(
          child: Icon(Icons.people, size: size * 0.8),
        ),
      );
    }
    return ImageView(
        image: MyImage.network(
            url: picture,
            params: ImageParams(
                size: size,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(size / 2),
                shape: BoxShape.rectangle)));
  }

  String getIntro() {
    if(intro.isEmpty){
      return '点击编辑你的自我介绍';
    }
    return intro;
  }
}

@freezed
class MyUser with _$MyUser {
  const factory MyUser(
      {required int id,
      @Default('') String loginNumber,
      @Default('') String username,
      @Default('') String email,
      @Default('未设置昵称') String nickName,
      @Default('') String picture,
      @Default('') String phone,
      @Default(-1) int type,
      @Default(-1) int status,
      @Default('') String loginTime,
      @Default(false) bool enabled,
      @Default(false) bool accountNonExpired,
      @Default(false) bool accountNonLocked,
      @Default(false) bool credentialsNonExpired,
      @Default("") String city,
      @Default("") String job,
      @Default(Vip.none) Vip vip,
      @Default('') String intro,
      @Default(0) num openAiTokens,
      @Default(false) bool openAiFlag,
        @Default('') String relationId,
      Enterprise? enterprise}) = _MyUser;

  factory MyUser.fromJson(Map<String, Object?> json) => _$MyUserFromJson(json);
}

@JsonEnum(valueField: 'vip')
enum Vip {
  @JsonValue(0)
  none,
  @JsonValue(1)
  vip,
  @JsonValue(2)
  superVip,
  @JsonValue(3)
  specialVip
}

//公司
@freezed
class Enterprise with _$Enterprise {
  const Enterprise._();

  const factory Enterprise({
    @JsonKey(name: 'enable') @Default(false) bool enable,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'phone') @Default('') String phone,
    @JsonKey(name: 'profile') @Default('') String profile,
    @JsonKey(name: 'qq') @Default('') String qq,
    @JsonKey(name: 'wechat') @Default('') String wechat,
  }) = _Enterprise;

  factory Enterprise.fromJson(Map<String, dynamic> json) =>
      _$EnterpriseFromJson(json);
}
