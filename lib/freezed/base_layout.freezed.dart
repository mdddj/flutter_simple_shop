// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseLayout {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BaseLayout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseLayout()';
  }
}

/// @nodoc
class $BaseLayoutCopyWith<$Res> {
  $BaseLayoutCopyWith(BaseLayout _, $Res Function(BaseLayout) __);
}

/// Adds pattern-matching-related methods to [BaseLayout].
extension BaseLayoutPatterns on BaseLayout {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileLayout value)? mobile,
    TResult Function(TableLayout value)? table,
    TResult Function(DesktopLayout value)? desktop,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout() when mobile != null:
        return mobile(_that);
      case TableLayout() when table != null:
        return table(_that);
      case DesktopLayout() when desktop != null:
        return desktop(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileLayout value) mobile,
    required TResult Function(TableLayout value) table,
    required TResult Function(DesktopLayout value) desktop,
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout():
        return mobile(_that);
      case TableLayout():
        return table(_that);
      case DesktopLayout():
        return desktop(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileLayout value)? mobile,
    TResult? Function(TableLayout value)? table,
    TResult? Function(DesktopLayout value)? desktop,
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout() when mobile != null:
        return mobile(_that);
      case TableLayout() when table != null:
        return table(_that);
      case DesktopLayout() when desktop != null:
        return desktop(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mobile,
    TResult Function()? table,
    TResult Function()? desktop,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout() when mobile != null:
        return mobile();
      case TableLayout() when table != null:
        return table();
      case DesktopLayout() when desktop != null:
        return desktop();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mobile,
    required TResult Function() table,
    required TResult Function() desktop,
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout():
        return mobile();
      case TableLayout():
        return table();
      case DesktopLayout():
        return desktop();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mobile,
    TResult? Function()? table,
    TResult? Function()? desktop,
  }) {
    final _that = this;
    switch (_that) {
      case MobileLayout() when mobile != null:
        return mobile();
      case TableLayout() when table != null:
        return table();
      case DesktopLayout() when desktop != null:
        return desktop();
      case _:
        return null;
    }
  }
}

/// @nodoc

class MobileLayout extends BaseLayout {
  MobileLayout() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MobileLayout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseLayout.mobile()';
  }
}

/// @nodoc

class TableLayout extends BaseLayout {
  TableLayout() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TableLayout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseLayout.table()';
  }
}

/// @nodoc

class DesktopLayout extends BaseLayout {
  DesktopLayout() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DesktopLayout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseLayout.desktop()';
  }
}

// dart format on
