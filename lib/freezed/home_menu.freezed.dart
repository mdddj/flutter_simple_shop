// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeMenu {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'svgPath')
  String get svgpath => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  String? get routerPath => throw _privateConstructorUsedError;
  Object? get extra => throw _privateConstructorUsedError;
  VoidCallback? get onTap => throw _privateConstructorUsedError;
  VoidCallback? get onLongTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeMenuCopyWith<HomeMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMenuCopyWith<$Res> {
  factory $HomeMenuCopyWith(HomeMenu value, $Res Function(HomeMenu) then) =
      _$HomeMenuCopyWithImpl<$Res, HomeMenu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'svgPath') String svgpath,
      Widget? icon,
      @JsonKey(name: 'image') String image,
      String? routerPath,
      Object? extra,
      VoidCallback? onTap,
      VoidCallback? onLongTap});
}

/// @nodoc
class _$HomeMenuCopyWithImpl<$Res, $Val extends HomeMenu>
    implements $HomeMenuCopyWith<$Res> {
  _$HomeMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? svgpath = null,
    Object? icon = freezed,
    Object? image = null,
    Object? routerPath = freezed,
    Object? extra = freezed,
    Object? onTap = freezed,
    Object? onLongTap = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      svgpath: null == svgpath
          ? _value.svgpath
          : svgpath // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      routerPath: freezed == routerPath
          ? _value.routerPath
          : routerPath // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra ? _value.extra : extra,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onLongTap: freezed == onLongTap
          ? _value.onLongTap
          : onLongTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeMenuCopyWith<$Res> implements $HomeMenuCopyWith<$Res> {
  factory _$$_HomeMenuCopyWith(
          _$_HomeMenu value, $Res Function(_$_HomeMenu) then) =
      __$$_HomeMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'svgPath') String svgpath,
      Widget? icon,
      @JsonKey(name: 'image') String image,
      String? routerPath,
      Object? extra,
      VoidCallback? onTap,
      VoidCallback? onLongTap});
}

/// @nodoc
class __$$_HomeMenuCopyWithImpl<$Res>
    extends _$HomeMenuCopyWithImpl<$Res, _$_HomeMenu>
    implements _$$_HomeMenuCopyWith<$Res> {
  __$$_HomeMenuCopyWithImpl(
      _$_HomeMenu _value, $Res Function(_$_HomeMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? svgpath = null,
    Object? icon = freezed,
    Object? image = null,
    Object? routerPath = freezed,
    Object? extra = freezed,
    Object? onTap = freezed,
    Object? onLongTap = freezed,
  }) {
    return _then(_$_HomeMenu(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      svgpath: null == svgpath
          ? _value.svgpath
          : svgpath // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      routerPath: freezed == routerPath
          ? _value.routerPath
          : routerPath // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra ? _value.extra : extra,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onLongTap: freezed == onLongTap
          ? _value.onLongTap
          : onLongTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_HomeMenu extends _HomeMenu {
  const _$_HomeMenu(
      {@JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'svgPath') this.svgpath = '',
      this.icon,
      @JsonKey(name: 'image') this.image = '',
      this.routerPath,
      this.extra,
      this.onTap,
      this.onLongTap})
      : super._();

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'svgPath')
  final String svgpath;
  @override
  final Widget? icon;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  final String? routerPath;
  @override
  final Object? extra;
  @override
  final VoidCallback? onTap;
  @override
  final VoidCallback? onLongTap;

  @override
  String toString() {
    return 'HomeMenu(title: $title, svgpath: $svgpath, icon: $icon, image: $image, routerPath: $routerPath, extra: $extra, onTap: $onTap, onLongTap: $onLongTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeMenu &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.svgpath, svgpath) || other.svgpath == svgpath) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.routerPath, routerPath) ||
                other.routerPath == routerPath) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.onLongTap, onLongTap) ||
                other.onLongTap == onLongTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, svgpath, icon, image,
      routerPath, const DeepCollectionEquality().hash(extra), onTap, onLongTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeMenuCopyWith<_$_HomeMenu> get copyWith =>
      __$$_HomeMenuCopyWithImpl<_$_HomeMenu>(this, _$identity);
}

abstract class _HomeMenu extends HomeMenu {
  const factory _HomeMenu(
      {@JsonKey(name: 'title') final String title,
      @JsonKey(name: 'svgPath') final String svgpath,
      final Widget? icon,
      @JsonKey(name: 'image') final String image,
      final String? routerPath,
      final Object? extra,
      final VoidCallback? onTap,
      final VoidCallback? onLongTap}) = _$_HomeMenu;
  const _HomeMenu._() : super._();

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'svgPath')
  String get svgpath;
  @override
  Widget? get icon;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  String? get routerPath;
  @override
  Object? get extra;
  @override
  VoidCallback? get onTap;
  @override
  VoidCallback? get onLongTap;
  @override
  @JsonKey(ignore: true)
  _$$_HomeMenuCopyWith<_$_HomeMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
