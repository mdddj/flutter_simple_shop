// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_action_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppActionMenu {
  @JsonKey(name: 'title')
  String get title;
  List<ListTile> get actions;

  /// Create a copy of AppActionMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppActionMenuCopyWith<AppActionMenu> get copyWith =>
      _$AppActionMenuCopyWithImpl<AppActionMenu>(
          this as AppActionMenu, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppActionMenu &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(actions));

  @override
  String toString() {
    return 'AppActionMenu(title: $title, actions: $actions)';
  }
}

/// @nodoc
abstract mixin class $AppActionMenuCopyWith<$Res> {
  factory $AppActionMenuCopyWith(
          AppActionMenu value, $Res Function(AppActionMenu) _then) =
      _$AppActionMenuCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'title') String title, List<ListTile> actions});
}

/// @nodoc
class _$AppActionMenuCopyWithImpl<$Res>
    implements $AppActionMenuCopyWith<$Res> {
  _$AppActionMenuCopyWithImpl(this._self, this._then);

  final AppActionMenu _self;
  final $Res Function(AppActionMenu) _then;

  /// Create a copy of AppActionMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ListTile>,
    ));
  }
}

/// @nodoc

class _AppActionMenu extends AppActionMenu {
  const _AppActionMenu(
      {@JsonKey(name: 'title') this.title = '',
      required final List<ListTile> actions})
      : _actions = actions,
        super._();

  @override
  @JsonKey(name: 'title')
  final String title;
  final List<ListTile> _actions;
  @override
  List<ListTile> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  /// Create a copy of AppActionMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppActionMenuCopyWith<_AppActionMenu> get copyWith =>
      __$AppActionMenuCopyWithImpl<_AppActionMenu>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppActionMenu &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_actions));

  @override
  String toString() {
    return 'AppActionMenu(title: $title, actions: $actions)';
  }
}

/// @nodoc
abstract mixin class _$AppActionMenuCopyWith<$Res>
    implements $AppActionMenuCopyWith<$Res> {
  factory _$AppActionMenuCopyWith(
          _AppActionMenu value, $Res Function(_AppActionMenu) _then) =
      __$AppActionMenuCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'title') String title, List<ListTile> actions});
}

/// @nodoc
class __$AppActionMenuCopyWithImpl<$Res>
    implements _$AppActionMenuCopyWith<$Res> {
  __$AppActionMenuCopyWithImpl(this._self, this._then);

  final _AppActionMenu _self;
  final $Res Function(_AppActionMenu) _then;

  /// Create a copy of AppActionMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_AppActionMenu(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ListTile>,
    ));
  }
}

// dart format on
