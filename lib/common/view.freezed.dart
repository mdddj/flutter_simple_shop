// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplocationContext {
  BuildContext get context;
  WidgetRef get ref;

  /// Create a copy of ApplocationContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplocationContextCopyWith<ApplocationContext> get copyWith =>
      _$ApplocationContextCopyWithImpl<ApplocationContext>(
          this as ApplocationContext, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplocationContext &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, ref);

  @override
  String toString() {
    return 'ApplocationContext(context: $context, ref: $ref)';
  }
}

/// @nodoc
abstract mixin class $ApplocationContextCopyWith<$Res> {
  factory $ApplocationContextCopyWith(
          ApplocationContext value, $Res Function(ApplocationContext) _then) =
      _$ApplocationContextCopyWithImpl;
  @useResult
  $Res call({BuildContext context, WidgetRef ref});
}

/// @nodoc
class _$ApplocationContextCopyWithImpl<$Res>
    implements $ApplocationContextCopyWith<$Res> {
  _$ApplocationContextCopyWithImpl(this._self, this._then);

  final ApplocationContext _self;
  final $Res Function(ApplocationContext) _then;

  /// Create a copy of ApplocationContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? ref = null,
  }) {
    return _then(_self.copyWith(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
    ));
  }
}

/// @nodoc

class _ApplocationContext implements ApplocationContext {
  const _ApplocationContext(this.context, this.ref);

  @override
  final BuildContext context;
  @override
  final WidgetRef ref;

  /// Create a copy of ApplocationContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApplocationContextCopyWith<_ApplocationContext> get copyWith =>
      __$ApplocationContextCopyWithImpl<_ApplocationContext>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplocationContext &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, ref);

  @override
  String toString() {
    return 'ApplocationContext(context: $context, ref: $ref)';
  }
}

/// @nodoc
abstract mixin class _$ApplocationContextCopyWith<$Res>
    implements $ApplocationContextCopyWith<$Res> {
  factory _$ApplocationContextCopyWith(
          _ApplocationContext value, $Res Function(_ApplocationContext) _then) =
      __$ApplocationContextCopyWithImpl;
  @override
  @useResult
  $Res call({BuildContext context, WidgetRef ref});
}

/// @nodoc
class __$ApplocationContextCopyWithImpl<$Res>
    implements _$ApplocationContextCopyWith<$Res> {
  __$ApplocationContextCopyWithImpl(this._self, this._then);

  final _ApplocationContext _self;
  final $Res Function(_ApplocationContext) _then;

  /// Create a copy of ApplocationContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? context = null,
    Object? ref = null,
  }) {
    return _then(_ApplocationContext(
      null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
    ));
  }
}

/// @nodoc
mixin _$ApplicationModel {
  BuildContext get context;
  WidgetRef get ref;
  FavoritesRepository get favoritesRepository;
  ApplocationContext get applocationContext;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplicationModelCopyWith<ApplicationModel> get copyWith =>
      _$ApplicationModelCopyWithImpl<ApplicationModel>(
          this as ApplicationModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplicationModel &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            const DeepCollectionEquality()
                .equals(other.favoritesRepository, favoritesRepository) &&
            (identical(other.applocationContext, applocationContext) ||
                other.applocationContext == applocationContext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      context,
      ref,
      const DeepCollectionEquality().hash(favoritesRepository),
      applocationContext);

  @override
  String toString() {
    return 'ApplicationModel(context: $context, ref: $ref, favoritesRepository: $favoritesRepository, applocationContext: $applocationContext)';
  }
}

/// @nodoc
abstract mixin class $ApplicationModelCopyWith<$Res> {
  factory $ApplicationModelCopyWith(
          ApplicationModel value, $Res Function(ApplicationModel) _then) =
      _$ApplicationModelCopyWithImpl;
  @useResult
  $Res call(
      {BuildContext context,
      WidgetRef ref,
      FavoritesRepository favoritesRepository,
      ApplocationContext applocationContext});

  $ApplocationContextCopyWith<$Res> get applocationContext;
}

/// @nodoc
class _$ApplicationModelCopyWithImpl<$Res>
    implements $ApplicationModelCopyWith<$Res> {
  _$ApplicationModelCopyWithImpl(this._self, this._then);

  final ApplicationModel _self;
  final $Res Function(ApplicationModel) _then;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? ref = null,
    Object? favoritesRepository = null,
    Object? applocationContext = null,
  }) {
    return _then(_self.copyWith(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
      favoritesRepository: null == favoritesRepository
          ? _self.favoritesRepository
          : favoritesRepository // ignore: cast_nullable_to_non_nullable
              as FavoritesRepository,
      applocationContext: null == applocationContext
          ? _self.applocationContext
          : applocationContext // ignore: cast_nullable_to_non_nullable
              as ApplocationContext,
    ));
  }

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplocationContextCopyWith<$Res> get applocationContext {
    return $ApplocationContextCopyWith<$Res>(_self.applocationContext, (value) {
      return _then(_self.copyWith(applocationContext: value));
    });
  }
}

/// @nodoc

class _ApplicationModel implements ApplicationModel {
  const _ApplicationModel(
      {required this.context,
      required this.ref,
      required this.favoritesRepository,
      required this.applocationContext});

  @override
  final BuildContext context;
  @override
  final WidgetRef ref;
  @override
  final FavoritesRepository favoritesRepository;
  @override
  final ApplocationContext applocationContext;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApplicationModelCopyWith<_ApplicationModel> get copyWith =>
      __$ApplicationModelCopyWithImpl<_ApplicationModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplicationModel &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            const DeepCollectionEquality()
                .equals(other.favoritesRepository, favoritesRepository) &&
            (identical(other.applocationContext, applocationContext) ||
                other.applocationContext == applocationContext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      context,
      ref,
      const DeepCollectionEquality().hash(favoritesRepository),
      applocationContext);

  @override
  String toString() {
    return 'ApplicationModel(context: $context, ref: $ref, favoritesRepository: $favoritesRepository, applocationContext: $applocationContext)';
  }
}

/// @nodoc
abstract mixin class _$ApplicationModelCopyWith<$Res>
    implements $ApplicationModelCopyWith<$Res> {
  factory _$ApplicationModelCopyWith(
          _ApplicationModel value, $Res Function(_ApplicationModel) _then) =
      __$ApplicationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      WidgetRef ref,
      FavoritesRepository favoritesRepository,
      ApplocationContext applocationContext});

  @override
  $ApplocationContextCopyWith<$Res> get applocationContext;
}

/// @nodoc
class __$ApplicationModelCopyWithImpl<$Res>
    implements _$ApplicationModelCopyWith<$Res> {
  __$ApplicationModelCopyWithImpl(this._self, this._then);

  final _ApplicationModel _self;
  final $Res Function(_ApplicationModel) _then;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? context = null,
    Object? ref = null,
    Object? favoritesRepository = null,
    Object? applocationContext = null,
  }) {
    return _then(_ApplicationModel(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
      favoritesRepository: null == favoritesRepository
          ? _self.favoritesRepository
          : favoritesRepository // ignore: cast_nullable_to_non_nullable
              as FavoritesRepository,
      applocationContext: null == applocationContext
          ? _self.applocationContext
          : applocationContext // ignore: cast_nullable_to_non_nullable
              as ApplocationContext,
    ));
  }

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplocationContextCopyWith<$Res> get applocationContext {
    return $ApplocationContextCopyWith<$Res>(_self.applocationContext, (value) {
      return _then(_self.copyWith(applocationContext: value));
    });
  }
}

// dart format on
