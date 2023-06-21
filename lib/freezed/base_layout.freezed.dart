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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$MobileLayoutCopyWith<$Res> {
  factory _$$MobileLayoutCopyWith(
          _$MobileLayout value, $Res Function(_$MobileLayout) then) =
      __$$MobileLayoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MobileLayoutCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$MobileLayout>
    implements _$$MobileLayoutCopyWith<$Res> {
  __$$MobileLayoutCopyWithImpl(
      _$MobileLayout _value, $Res Function(_$MobileLayout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MobileLayout extends MobileLayout {
  _$MobileLayout() : super._();

  @override
  String toString() {
    return 'BaseLayout.mobile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MobileLayout);
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
  factory MobileLayout() = _$MobileLayout;
  MobileLayout._() : super._();
}

/// @nodoc
abstract class _$$TableLayoutCopyWith<$Res> {
  factory _$$TableLayoutCopyWith(
          _$TableLayout value, $Res Function(_$TableLayout) then) =
      __$$TableLayoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TableLayoutCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$TableLayout>
    implements _$$TableLayoutCopyWith<$Res> {
  __$$TableLayoutCopyWithImpl(
      _$TableLayout _value, $Res Function(_$TableLayout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TableLayout extends TableLayout {
  _$TableLayout() : super._();

  @override
  String toString() {
    return 'BaseLayout.table()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TableLayout);
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
  factory TableLayout() = _$TableLayout;
  TableLayout._() : super._();
}

/// @nodoc
abstract class _$$DesktopLayoutCopyWith<$Res> {
  factory _$$DesktopLayoutCopyWith(
          _$DesktopLayout value, $Res Function(_$DesktopLayout) then) =
      __$$DesktopLayoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DesktopLayoutCopyWithImpl<$Res>
    extends _$BaseLayoutCopyWithImpl<$Res, _$DesktopLayout>
    implements _$$DesktopLayoutCopyWith<$Res> {
  __$$DesktopLayoutCopyWithImpl(
      _$DesktopLayout _value, $Res Function(_$DesktopLayout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DesktopLayout extends DesktopLayout {
  _$DesktopLayout() : super._();

  @override
  String toString() {
    return 'BaseLayout.desktop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DesktopLayout);
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
  factory DesktopLayout() = _$DesktopLayout;
  DesktopLayout._() : super._();
}
