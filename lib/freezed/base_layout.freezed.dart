// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseLayout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mobile,
    required TResult Function() table,
    required TResult Function() desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mobile,
    TResult? Function()? table,
    TResult? Function()? desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mobile,
    TResult Function()? table,
    TResult Function()? desktop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileLayout value) mobile,
    required TResult Function(TableLayout value) table,
    required TResult Function(DesktopLayout value) desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileLayout value)? mobile,
    TResult? Function(TableLayout value)? table,
    TResult? Function(DesktopLayout value)? desktop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileLayout value)? mobile,
    TResult Function(TableLayout value)? table,
    TResult Function(DesktopLayout value)? desktop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseLayoutCopyWith<$Res> {
  factory $BaseLayoutCopyWith(
          BaseLayout value, $Res Function(BaseLayout) then) =
      _$BaseLayoutCopyWithImpl<$Res, BaseLayout>;
}

/// @nodoc
class _$BaseLayoutCopyWithImpl<$Res, $Val extends BaseLayout>
    implements $BaseLayoutCopyWith<$Res> {
  _$BaseLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MobileLayoutImplCopyWith<$Res> {
  factory _$$MobileLayoutImplCopyWith(
          _$MobileLayoutImpl value, $Res Function(_$MobileLayoutImpl) then) =
      __$$MobileLayoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MobileLayoutImplCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$MobileLayoutImpl>
    implements _$$MobileLayoutImplCopyWith<$Res> {
  __$$MobileLayoutImplCopyWithImpl(
      _$MobileLayoutImpl _value, $Res Function(_$MobileLayoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MobileLayoutImpl extends MobileLayout {
  _$MobileLayoutImpl() : super._();

  @override
  String toString() {
    return 'BaseLayout.mobile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MobileLayoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mobile,
    required TResult Function() table,
    required TResult Function() desktop,
  }) {
    return mobile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mobile,
    TResult? Function()? table,
    TResult? Function()? desktop,
  }) {
    return mobile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mobile,
    TResult Function()? table,
    TResult Function()? desktop,
    required TResult orElse(),
  }) {
    if (mobile != null) {
      return mobile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileLayout value) mobile,
    required TResult Function(TableLayout value) table,
    required TResult Function(DesktopLayout value) desktop,
  }) {
    return mobile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileLayout value)? mobile,
    TResult? Function(TableLayout value)? table,
    TResult? Function(DesktopLayout value)? desktop,
  }) {
    return mobile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileLayout value)? mobile,
    TResult Function(TableLayout value)? table,
    TResult Function(DesktopLayout value)? desktop,
    required TResult orElse(),
  }) {
    if (mobile != null) {
      return mobile(this);
    }
    return orElse();
  }
}

abstract class MobileLayout extends BaseLayout {
  factory MobileLayout() = _$MobileLayoutImpl;
  MobileLayout._() : super._();
}

/// @nodoc
abstract class _$$TableLayoutImplCopyWith<$Res> {
  factory _$$TableLayoutImplCopyWith(
          _$TableLayoutImpl value, $Res Function(_$TableLayoutImpl) then) =
      __$$TableLayoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TableLayoutImplCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$TableLayoutImpl>
    implements _$$TableLayoutImplCopyWith<$Res> {
  __$$TableLayoutImplCopyWithImpl(
      _$TableLayoutImpl _value, $Res Function(_$TableLayoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TableLayoutImpl extends TableLayout {
  _$TableLayoutImpl() : super._();

  @override
  String toString() {
    return 'BaseLayout.table()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TableLayoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mobile,
    required TResult Function() table,
    required TResult Function() desktop,
  }) {
    return table();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mobile,
    TResult? Function()? table,
    TResult? Function()? desktop,
  }) {
    return table?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mobile,
    TResult Function()? table,
    TResult Function()? desktop,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileLayout value) mobile,
    required TResult Function(TableLayout value) table,
    required TResult Function(DesktopLayout value) desktop,
  }) {
    return table(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileLayout value)? mobile,
    TResult? Function(TableLayout value)? table,
    TResult? Function(DesktopLayout value)? desktop,
  }) {
    return table?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileLayout value)? mobile,
    TResult Function(TableLayout value)? table,
    TResult Function(DesktopLayout value)? desktop,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table(this);
    }
    return orElse();
  }
}

abstract class TableLayout extends BaseLayout {
  factory TableLayout() = _$TableLayoutImpl;
  TableLayout._() : super._();
}

/// @nodoc
abstract class _$$DesktopLayoutImplCopyWith<$Res> {
  factory _$$DesktopLayoutImplCopyWith(
          _$DesktopLayoutImpl value, $Res Function(_$DesktopLayoutImpl) then) =
      __$$DesktopLayoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DesktopLayoutImplCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$DesktopLayoutImpl>
    implements _$$DesktopLayoutImplCopyWith<$Res> {
  __$$DesktopLayoutImplCopyWithImpl(
      _$DesktopLayoutImpl _value, $Res Function(_$DesktopLayoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DesktopLayoutImpl extends DesktopLayout {
  _$DesktopLayoutImpl() : super._();

  @override
  String toString() {
    return 'BaseLayout.desktop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DesktopLayoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mobile,
    required TResult Function() table,
    required TResult Function() desktop,
  }) {
    return desktop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mobile,
    TResult? Function()? table,
    TResult? Function()? desktop,
  }) {
    return desktop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mobile,
    TResult Function()? table,
    TResult Function()? desktop,
    required TResult orElse(),
  }) {
    if (desktop != null) {
      return desktop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileLayout value) mobile,
    required TResult Function(TableLayout value) table,
    required TResult Function(DesktopLayout value) desktop,
  }) {
    return desktop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileLayout value)? mobile,
    TResult? Function(TableLayout value)? table,
    TResult? Function(DesktopLayout value)? desktop,
  }) {
    return desktop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileLayout value)? mobile,
    TResult Function(TableLayout value)? table,
    TResult Function(DesktopLayout value)? desktop,
    required TResult orElse(),
  }) {
    if (desktop != null) {
      return desktop(this);
    }
    return orElse();
  }
}

abstract class DesktopLayout extends BaseLayout {
  factory DesktopLayout() = _$DesktopLayoutImpl;
  DesktopLayout._() : super._();
}
