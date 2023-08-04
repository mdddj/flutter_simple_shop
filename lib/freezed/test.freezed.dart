// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Root _$RootFromJson(Map<String, dynamic> json) {
  return _Root.fromJson(json);
}

/// @nodoc
mixin _$Root {
  @JsonKey(name: 'Current_currency')
  String get currentCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_qty')
  int get itemsQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_points')
  String get cartPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'BaseSubtotalWithDiscount')
  double get basesubtotalwithdiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_subtotal')
  double get baseSubtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_discount_value')
  int get baseDiscountValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_notification')
  List<String> get cartNotification => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote_currency')
  String get quoteCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxSize')
  int get maxsize => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<Items> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RootCopyWith<Root> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootCopyWith<$Res> {
  factory $RootCopyWith(Root value, $Res Function(Root) then) =
      _$RootCopyWithImpl<$Res, Root>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Current_currency') String currentCurrency,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'items_qty') int itemsQty,
      @JsonKey(name: 'cart_points') String cartPoints,
      @JsonKey(name: 'BaseSubtotalWithDiscount')
      double basesubtotalwithdiscount,
      @JsonKey(name: 'subtotal') double subtotal,
      @JsonKey(name: 'base_subtotal') double baseSubtotal,
      @JsonKey(name: 'base_discount_value') int baseDiscountValue,
      @JsonKey(name: 'cart_notification') List<String> cartNotification,
      @JsonKey(name: 'quote_currency') String quoteCurrency,
      @JsonKey(name: 'maxSize') int maxsize,
      @JsonKey(name: 'items') List<Items> items,
      @JsonKey(name: 'success') bool success});
}

/// @nodoc
class _$RootCopyWithImpl<$Res, $Val extends Root>
    implements $RootCopyWith<$Res> {
  _$RootCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCurrency = null,
    Object? id = null,
    Object? itemsQty = null,
    Object? cartPoints = null,
    Object? basesubtotalwithdiscount = null,
    Object? subtotal = null,
    Object? baseSubtotal = null,
    Object? baseDiscountValue = null,
    Object? cartNotification = null,
    Object? quoteCurrency = null,
    Object? maxsize = null,
    Object? items = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      currentCurrency: null == currentCurrency
          ? _value.currentCurrency
          : currentCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemsQty: null == itemsQty
          ? _value.itemsQty
          : itemsQty // ignore: cast_nullable_to_non_nullable
              as int,
      cartPoints: null == cartPoints
          ? _value.cartPoints
          : cartPoints // ignore: cast_nullable_to_non_nullable
              as String,
      basesubtotalwithdiscount: null == basesubtotalwithdiscount
          ? _value.basesubtotalwithdiscount
          : basesubtotalwithdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseSubtotal: null == baseSubtotal
          ? _value.baseSubtotal
          : baseSubtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseDiscountValue: null == baseDiscountValue
          ? _value.baseDiscountValue
          : baseDiscountValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartNotification: null == cartNotification
          ? _value.cartNotification
          : cartNotification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quoteCurrency: null == quoteCurrency
          ? _value.quoteCurrency
          : quoteCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      maxsize: null == maxsize
          ? _value.maxsize
          : maxsize // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RootCopyWith<$Res> implements $RootCopyWith<$Res> {
  factory _$$_RootCopyWith(_$_Root value, $Res Function(_$_Root) then) =
      __$$_RootCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Current_currency') String currentCurrency,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'items_qty') int itemsQty,
      @JsonKey(name: 'cart_points') String cartPoints,
      @JsonKey(name: 'BaseSubtotalWithDiscount')
      double basesubtotalwithdiscount,
      @JsonKey(name: 'subtotal') double subtotal,
      @JsonKey(name: 'base_subtotal') double baseSubtotal,
      @JsonKey(name: 'base_discount_value') int baseDiscountValue,
      @JsonKey(name: 'cart_notification') List<String> cartNotification,
      @JsonKey(name: 'quote_currency') String quoteCurrency,
      @JsonKey(name: 'maxSize') int maxsize,
      @JsonKey(name: 'items') List<Items> items,
      @JsonKey(name: 'success') bool success});
}

/// @nodoc
class __$$_RootCopyWithImpl<$Res> extends _$RootCopyWithImpl<$Res, _$_Root>
    implements _$$_RootCopyWith<$Res> {
  __$$_RootCopyWithImpl(_$_Root _value, $Res Function(_$_Root) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCurrency = null,
    Object? id = null,
    Object? itemsQty = null,
    Object? cartPoints = null,
    Object? basesubtotalwithdiscount = null,
    Object? subtotal = null,
    Object? baseSubtotal = null,
    Object? baseDiscountValue = null,
    Object? cartNotification = null,
    Object? quoteCurrency = null,
    Object? maxsize = null,
    Object? items = null,
    Object? success = null,
  }) {
    return _then(_$_Root(
      currentCurrency: null == currentCurrency
          ? _value.currentCurrency
          : currentCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemsQty: null == itemsQty
          ? _value.itemsQty
          : itemsQty // ignore: cast_nullable_to_non_nullable
              as int,
      cartPoints: null == cartPoints
          ? _value.cartPoints
          : cartPoints // ignore: cast_nullable_to_non_nullable
              as String,
      basesubtotalwithdiscount: null == basesubtotalwithdiscount
          ? _value.basesubtotalwithdiscount
          : basesubtotalwithdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseSubtotal: null == baseSubtotal
          ? _value.baseSubtotal
          : baseSubtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseDiscountValue: null == baseDiscountValue
          ? _value.baseDiscountValue
          : baseDiscountValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartNotification: null == cartNotification
          ? _value._cartNotification
          : cartNotification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quoteCurrency: null == quoteCurrency
          ? _value.quoteCurrency
          : quoteCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      maxsize: null == maxsize
          ? _value.maxsize
          : maxsize // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Root implements _Root {
  const _$_Root(
      {@JsonKey(name: 'Current_currency') this.currentCurrency = '',
      @JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'items_qty') this.itemsQty = 0,
      @JsonKey(name: 'cart_points') this.cartPoints = '',
      @JsonKey(name: 'BaseSubtotalWithDiscount')
      this.basesubtotalwithdiscount = 0.0,
      @JsonKey(name: 'subtotal') this.subtotal = 0.0,
      @JsonKey(name: 'base_subtotal') this.baseSubtotal = 0.0,
      @JsonKey(name: 'base_discount_value') this.baseDiscountValue = 0,
      @JsonKey(name: 'cart_notification')
      final List<String> cartNotification = const [],
      @JsonKey(name: 'quote_currency') this.quoteCurrency = '',
      @JsonKey(name: 'maxSize') this.maxsize = 0,
      @JsonKey(name: 'items') final List<Items> items = const [],
      @JsonKey(name: 'success') this.success = false})
      : _cartNotification = cartNotification,
        _items = items;

  factory _$_Root.fromJson(Map<String, dynamic> json) => _$$_RootFromJson(json);

  @override
  @JsonKey(name: 'Current_currency')
  final String currentCurrency;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'items_qty')
  final int itemsQty;
  @override
  @JsonKey(name: 'cart_points')
  final String cartPoints;
  @override
  @JsonKey(name: 'BaseSubtotalWithDiscount')
  final double basesubtotalwithdiscount;
  @override
  @JsonKey(name: 'subtotal')
  final double subtotal;
  @override
  @JsonKey(name: 'base_subtotal')
  final double baseSubtotal;
  @override
  @JsonKey(name: 'base_discount_value')
  final int baseDiscountValue;
  final List<String> _cartNotification;
  @override
  @JsonKey(name: 'cart_notification')
  List<String> get cartNotification {
    if (_cartNotification is EqualUnmodifiableListView)
      return _cartNotification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartNotification);
  }

  @override
  @JsonKey(name: 'quote_currency')
  final String quoteCurrency;
  @override
  @JsonKey(name: 'maxSize')
  final int maxsize;
  final List<Items> _items;
  @override
  @JsonKey(name: 'items')
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'success')
  final bool success;

  @override
  String toString() {
    return 'Root(currentCurrency: $currentCurrency, id: $id, itemsQty: $itemsQty, cartPoints: $cartPoints, basesubtotalwithdiscount: $basesubtotalwithdiscount, subtotal: $subtotal, baseSubtotal: $baseSubtotal, baseDiscountValue: $baseDiscountValue, cartNotification: $cartNotification, quoteCurrency: $quoteCurrency, maxsize: $maxsize, items: $items, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Root &&
            (identical(other.currentCurrency, currentCurrency) ||
                other.currentCurrency == currentCurrency) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemsQty, itemsQty) ||
                other.itemsQty == itemsQty) &&
            (identical(other.cartPoints, cartPoints) ||
                other.cartPoints == cartPoints) &&
            (identical(
                    other.basesubtotalwithdiscount, basesubtotalwithdiscount) ||
                other.basesubtotalwithdiscount == basesubtotalwithdiscount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.baseSubtotal, baseSubtotal) ||
                other.baseSubtotal == baseSubtotal) &&
            (identical(other.baseDiscountValue, baseDiscountValue) ||
                other.baseDiscountValue == baseDiscountValue) &&
            const DeepCollectionEquality()
                .equals(other._cartNotification, _cartNotification) &&
            (identical(other.quoteCurrency, quoteCurrency) ||
                other.quoteCurrency == quoteCurrency) &&
            (identical(other.maxsize, maxsize) || other.maxsize == maxsize) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentCurrency,
      id,
      itemsQty,
      cartPoints,
      basesubtotalwithdiscount,
      subtotal,
      baseSubtotal,
      baseDiscountValue,
      const DeepCollectionEquality().hash(_cartNotification),
      quoteCurrency,
      maxsize,
      const DeepCollectionEquality().hash(_items),
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootCopyWith<_$_Root> get copyWith =>
      __$$_RootCopyWithImpl<_$_Root>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RootToJson(
      this,
    );
  }
}

abstract class _Root implements Root {
  const factory _Root(
      {@JsonKey(name: 'Current_currency') final String currentCurrency,
      @JsonKey(name: 'id') final String id,
      @JsonKey(name: 'items_qty') final int itemsQty,
      @JsonKey(name: 'cart_points') final String cartPoints,
      @JsonKey(name: 'BaseSubtotalWithDiscount')
      final double basesubtotalwithdiscount,
      @JsonKey(name: 'subtotal') final double subtotal,
      @JsonKey(name: 'base_subtotal') final double baseSubtotal,
      @JsonKey(name: 'base_discount_value') final int baseDiscountValue,
      @JsonKey(name: 'cart_notification') final List<String> cartNotification,
      @JsonKey(name: 'quote_currency') final String quoteCurrency,
      @JsonKey(name: 'maxSize') final int maxsize,
      @JsonKey(name: 'items') final List<Items> items,
      @JsonKey(name: 'success') final bool success}) = _$_Root;

  factory _Root.fromJson(Map<String, dynamic> json) = _$_Root.fromJson;

  @override
  @JsonKey(name: 'Current_currency')
  String get currentCurrency;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'items_qty')
  int get itemsQty;
  @override
  @JsonKey(name: 'cart_points')
  String get cartPoints;
  @override
  @JsonKey(name: 'BaseSubtotalWithDiscount')
  double get basesubtotalwithdiscount;
  @override
  @JsonKey(name: 'subtotal')
  double get subtotal;
  @override
  @JsonKey(name: 'base_subtotal')
  double get baseSubtotal;
  @override
  @JsonKey(name: 'base_discount_value')
  int get baseDiscountValue;
  @override
  @JsonKey(name: 'cart_notification')
  List<String> get cartNotification;
  @override
  @JsonKey(name: 'quote_currency')
  String get quoteCurrency;
  @override
  @JsonKey(name: 'maxSize')
  int get maxsize;
  @override
  @JsonKey(name: 'items')
  List<Items> get items;
  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_RootCopyWith<_$_Root> get copyWith => throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_choose')
  bool get isChoose => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  String get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  List<Options> get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalPrice')
  String get finalprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  String get productid => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_original_price')
  String get productOriginalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_error')
  bool get itemError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_id') String cartId,
      @JsonKey(name: 'is_choose') bool isChoose,
      @JsonKey(name: 'position') String position,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'options') List<Options> options,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'finalPrice') String finalprice,
      @JsonKey(name: 'productId') String productid,
      @JsonKey(name: 'product_original_price') String productOriginalPrice,
      @JsonKey(name: 'item_error') bool itemError});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? isChoose = null,
    Object? position = null,
    Object? image = null,
    Object? name = null,
    Object? options = null,
    Object? id = null,
    Object? sku = null,
    Object? qty = null,
    Object? finalprice = null,
    Object? productid = null,
    Object? productOriginalPrice = null,
    Object? itemError = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      isChoose: null == isChoose
          ? _value.isChoose
          : isChoose // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Options>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      finalprice: null == finalprice
          ? _value.finalprice
          : finalprice // ignore: cast_nullable_to_non_nullable
              as String,
      productid: null == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      productOriginalPrice: null == productOriginalPrice
          ? _value.productOriginalPrice
          : productOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemError: null == itemError
          ? _value.itemError
          : itemError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_id') String cartId,
      @JsonKey(name: 'is_choose') bool isChoose,
      @JsonKey(name: 'position') String position,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'options') List<Options> options,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'finalPrice') String finalprice,
      @JsonKey(name: 'productId') String productid,
      @JsonKey(name: 'product_original_price') String productOriginalPrice,
      @JsonKey(name: 'item_error') bool itemError});
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? isChoose = null,
    Object? position = null,
    Object? image = null,
    Object? name = null,
    Object? options = null,
    Object? id = null,
    Object? sku = null,
    Object? qty = null,
    Object? finalprice = null,
    Object? productid = null,
    Object? productOriginalPrice = null,
    Object? itemError = null,
  }) {
    return _then(_$_Items(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      isChoose: null == isChoose
          ? _value.isChoose
          : isChoose // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Options>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      finalprice: null == finalprice
          ? _value.finalprice
          : finalprice // ignore: cast_nullable_to_non_nullable
              as String,
      productid: null == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      productOriginalPrice: null == productOriginalPrice
          ? _value.productOriginalPrice
          : productOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemError: null == itemError
          ? _value.itemError
          : itemError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  const _$_Items(
      {@JsonKey(name: 'cart_id') this.cartId = '',
      @JsonKey(name: 'is_choose') this.isChoose = false,
      @JsonKey(name: 'position') this.position = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'options') final List<Options> options = const [],
      @JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'sku') this.sku = '',
      @JsonKey(name: 'qty') this.qty = 0,
      @JsonKey(name: 'finalPrice') this.finalprice = '',
      @JsonKey(name: 'productId') this.productid = '',
      @JsonKey(name: 'product_original_price') this.productOriginalPrice = '',
      @JsonKey(name: 'item_error') this.itemError = false})
      : _options = options;

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  @override
  @JsonKey(name: 'is_choose')
  final bool isChoose;
  @override
  @JsonKey(name: 'position')
  final String position;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<Options> _options;
  @override
  @JsonKey(name: 'options')
  List<Options> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'sku')
  final String sku;
  @override
  @JsonKey(name: 'qty')
  final int qty;
  @override
  @JsonKey(name: 'finalPrice')
  final String finalprice;
  @override
  @JsonKey(name: 'productId')
  final String productid;
  @override
  @JsonKey(name: 'product_original_price')
  final String productOriginalPrice;
  @override
  @JsonKey(name: 'item_error')
  final bool itemError;

  @override
  String toString() {
    return 'Items(cartId: $cartId, isChoose: $isChoose, position: $position, image: $image, name: $name, options: $options, id: $id, sku: $sku, qty: $qty, finalprice: $finalprice, productid: $productid, productOriginalPrice: $productOriginalPrice, itemError: $itemError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.isChoose, isChoose) ||
                other.isChoose == isChoose) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.finalprice, finalprice) ||
                other.finalprice == finalprice) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.productOriginalPrice, productOriginalPrice) ||
                other.productOriginalPrice == productOriginalPrice) &&
            (identical(other.itemError, itemError) ||
                other.itemError == itemError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartId,
      isChoose,
      position,
      image,
      name,
      const DeepCollectionEquality().hash(_options),
      id,
      sku,
      qty,
      finalprice,
      productid,
      productOriginalPrice,
      itemError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {@JsonKey(name: 'cart_id') final String cartId,
      @JsonKey(name: 'is_choose') final bool isChoose,
      @JsonKey(name: 'position') final String position,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'options') final List<Options> options,
      @JsonKey(name: 'id') final String id,
      @JsonKey(name: 'sku') final String sku,
      @JsonKey(name: 'qty') final int qty,
      @JsonKey(name: 'finalPrice') final String finalprice,
      @JsonKey(name: 'productId') final String productid,
      @JsonKey(name: 'product_original_price')
      final String productOriginalPrice,
      @JsonKey(name: 'item_error') final bool itemError}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'is_choose')
  bool get isChoose;
  @override
  @JsonKey(name: 'position')
  String get position;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'options')
  List<Options> get options;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'sku')
  String get sku;
  @override
  @JsonKey(name: 'qty')
  int get qty;
  @override
  @JsonKey(name: 'finalPrice')
  String get finalprice;
  @override
  @JsonKey(name: 'productId')
  String get productid;
  @override
  @JsonKey(name: 'product_original_price')
  String get productOriginalPrice;
  @override
  @JsonKey(name: 'item_error')
  bool get itemError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}

Options _$OptionsFromJson(Map<String, dynamic> json) {
  return _Options.fromJson(json);
}

/// @nodoc
mixin _$Options {
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionsCopyWith<Options> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsCopyWith<$Res> {
  factory $OptionsCopyWith(Options value, $Res Function(Options) then) =
      _$OptionsCopyWithImpl<$Res, Options>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$OptionsCopyWithImpl<$Res, $Val extends Options>
    implements $OptionsCopyWith<$Res> {
  _$OptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OptionsCopyWith<$Res> implements $OptionsCopyWith<$Res> {
  factory _$$_OptionsCopyWith(
          _$_Options value, $Res Function(_$_Options) then) =
      __$$_OptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$_OptionsCopyWithImpl<$Res>
    extends _$OptionsCopyWithImpl<$Res, _$_Options>
    implements _$$_OptionsCopyWith<$Res> {
  __$$_OptionsCopyWithImpl(_$_Options _value, $Res Function(_$_Options) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$_Options(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Options implements _Options {
  const _$_Options(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'value') required this.value});

  factory _$_Options.fromJson(Map<String, dynamic> json) =>
      _$$_OptionsFromJson(json);

  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'Options(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Options &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OptionsCopyWith<_$_Options> get copyWith =>
      __$$_OptionsCopyWithImpl<_$_Options>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionsToJson(
      this,
    );
  }
}

abstract class _Options implements Options {
  const factory _Options(
      {@JsonKey(name: 'label') required final String label,
      @JsonKey(name: 'value') required final String value}) = _$_Options;

  factory _Options.fromJson(Map<String, dynamic> json) = _$_Options.fromJson;

  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_OptionsCopyWith<_$_Options> get copyWith =>
      throw _privateConstructorUsedError;
}
