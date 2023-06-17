// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_action_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppActionMenu {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  List<ListTile> get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppActionMenuCopyWith<AppActionMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppActionMenuCopyWith<$Res> {
  factory $AppActionMenuCopyWith(
          AppActionMenu value, $Res Function(AppActionMenu) then) =
      _$AppActionMenuCopyWithImpl<$Res, AppActionMenu>;
  @useResult
  $Res call({@JsonKey(name: 'title') String title, List<ListTile> actions});
}

/// @nodoc
class _$AppActionMenuCopyWithImpl<$Res, $Val extends AppActionMenu>
    implements $AppActionMenuCopyWith<$Res> {
  _$AppActionMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ListTile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppActionMenuCopyWith<$Res>
    implements $AppActionMenuCopyWith<$Res> {
  factory _$$_AppActionMenuCopyWith(
          _$_AppActionMenu value, $Res Function(_$_AppActionMenu) then) =
      __$$_AppActionMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'title') String title, List<ListTile> actions});
}

/// @nodoc
class __$$_AppActionMenuCopyWithImpl<$Res>
    extends _$AppActionMenuCopyWithImpl<$Res, _$_AppActionMenu>
    implements _$$_AppActionMenuCopyWith<$Res> {
  __$$_AppActionMenuCopyWithImpl(
      _$_AppActionMenu _value, $Res Function(_$_AppActionMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_$_AppActionMenu(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ListTile>,
    ));
  }
}

/// @nodoc

class _$_AppActionMenu extends _AppActionMenu {
  const _$_AppActionMenu(
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

  @override
  String toString() {
    return 'AppActionMenu(title: $title, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppActionMenu &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppActionMenuCopyWith<_$_AppActionMenu> get copyWith =>
      __$$_AppActionMenuCopyWithImpl<_$_AppActionMenu>(this, _$identity);
}

abstract class _AppActionMenu extends AppActionMenu {
  const factory _AppActionMenu(
      {@JsonKey(name: 'title') final String title,
      required final List<ListTile> actions}) = _$_AppActionMenu;
  const _AppActionMenu._() : super._();

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  List<ListTile> get actions;
  @override
  @JsonKey(ignore: true)
  _$$_AppActionMenuCopyWith<_$_AppActionMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
