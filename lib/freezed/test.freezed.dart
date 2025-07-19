// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Root {
  @JsonKey(name: 'Current_currency')
  String get currentCurrency;
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'items_qty')
  int get itemsQty;
  @JsonKey(name: 'cart_points')
  String get cartPoints;
  @JsonKey(name: 'BaseSubtotalWithDiscount')
  double get basesubtotalwithdiscount;
  @JsonKey(name: 'subtotal')
  double get subtotal;
  @JsonKey(name: 'base_subtotal')
  double get baseSubtotal;
  @JsonKey(name: 'base_discount_value')
  int get baseDiscountValue;
  @JsonKey(name: 'cart_notification')
  List<String> get cartNotification;
  @JsonKey(name: 'quote_currency')
  String get quoteCurrency;
  @JsonKey(name: 'maxSize')
  int get maxsize;
  @JsonKey(name: 'items')
  List<Items> get items;
  @JsonKey(name: 'success')
  bool get success;

  /// Create a copy of Root
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RootCopyWith<Root> get copyWith =>
      _$RootCopyWithImpl<Root>(this as Root, _$identity);

  /// Serializes this Root to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Root &&
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
                .equals(other.cartNotification, cartNotification) &&
            (identical(other.quoteCurrency, quoteCurrency) ||
                other.quoteCurrency == quoteCurrency) &&
            (identical(other.maxsize, maxsize) || other.maxsize == maxsize) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(cartNotification),
      quoteCurrency,
      maxsize,
      const DeepCollectionEquality().hash(items),
      success);

  @override
  String toString() {
    return 'Root(currentCurrency: $currentCurrency, id: $id, itemsQty: $itemsQty, cartPoints: $cartPoints, basesubtotalwithdiscount: $basesubtotalwithdiscount, subtotal: $subtotal, baseSubtotal: $baseSubtotal, baseDiscountValue: $baseDiscountValue, cartNotification: $cartNotification, quoteCurrency: $quoteCurrency, maxsize: $maxsize, items: $items, success: $success)';
  }
}

/// @nodoc
abstract mixin class $RootCopyWith<$Res> {
  factory $RootCopyWith(Root value, $Res Function(Root) _then) =
      _$RootCopyWithImpl;
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
class _$RootCopyWithImpl<$Res> implements $RootCopyWith<$Res> {
  _$RootCopyWithImpl(this._self, this._then);

  final Root _self;
  final $Res Function(Root) _then;

  /// Create a copy of Root
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      currentCurrency: null == currentCurrency
          ? _self.currentCurrency
          : currentCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemsQty: null == itemsQty
          ? _self.itemsQty
          : itemsQty // ignore: cast_nullable_to_non_nullable
              as int,
      cartPoints: null == cartPoints
          ? _self.cartPoints
          : cartPoints // ignore: cast_nullable_to_non_nullable
              as String,
      basesubtotalwithdiscount: null == basesubtotalwithdiscount
          ? _self.basesubtotalwithdiscount
          : basesubtotalwithdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseSubtotal: null == baseSubtotal
          ? _self.baseSubtotal
          : baseSubtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseDiscountValue: null == baseDiscountValue
          ? _self.baseDiscountValue
          : baseDiscountValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartNotification: null == cartNotification
          ? _self.cartNotification
          : cartNotification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quoteCurrency: null == quoteCurrency
          ? _self.quoteCurrency
          : quoteCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      maxsize: null == maxsize
          ? _self.maxsize
          : maxsize // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Root implements Root {
  const _Root(
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
  factory _Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);

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

  /// Create a copy of Root
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RootCopyWith<_Root> get copyWith =>
      __$RootCopyWithImpl<_Root>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RootToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Root &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Root(currentCurrency: $currentCurrency, id: $id, itemsQty: $itemsQty, cartPoints: $cartPoints, basesubtotalwithdiscount: $basesubtotalwithdiscount, subtotal: $subtotal, baseSubtotal: $baseSubtotal, baseDiscountValue: $baseDiscountValue, cartNotification: $cartNotification, quoteCurrency: $quoteCurrency, maxsize: $maxsize, items: $items, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$RootCopyWith<$Res> implements $RootCopyWith<$Res> {
  factory _$RootCopyWith(_Root value, $Res Function(_Root) _then) =
      __$RootCopyWithImpl;
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
class __$RootCopyWithImpl<$Res> implements _$RootCopyWith<$Res> {
  __$RootCopyWithImpl(this._self, this._then);

  final _Root _self;
  final $Res Function(_Root) _then;

  /// Create a copy of Root
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Root(
      currentCurrency: null == currentCurrency
          ? _self.currentCurrency
          : currentCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemsQty: null == itemsQty
          ? _self.itemsQty
          : itemsQty // ignore: cast_nullable_to_non_nullable
              as int,
      cartPoints: null == cartPoints
          ? _self.cartPoints
          : cartPoints // ignore: cast_nullable_to_non_nullable
              as String,
      basesubtotalwithdiscount: null == basesubtotalwithdiscount
          ? _self.basesubtotalwithdiscount
          : basesubtotalwithdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseSubtotal: null == baseSubtotal
          ? _self.baseSubtotal
          : baseSubtotal // ignore: cast_nullable_to_non_nullable
              as double,
      baseDiscountValue: null == baseDiscountValue
          ? _self.baseDiscountValue
          : baseDiscountValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartNotification: null == cartNotification
          ? _self._cartNotification
          : cartNotification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quoteCurrency: null == quoteCurrency
          ? _self.quoteCurrency
          : quoteCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      maxsize: null == maxsize
          ? _self.maxsize
          : maxsize // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$Items {
  @JsonKey(name: 'cart_id')
  String get cartId;
  @JsonKey(name: 'is_choose')
  bool get isChoose;
  @JsonKey(name: 'position')
  String get position;
  @JsonKey(name: 'image')
  String get image;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'options')
  List<Options> get options;
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'sku')
  String get sku;
  @JsonKey(name: 'qty')
  int get qty;
  @JsonKey(name: 'finalPrice')
  String get finalprice;
  @JsonKey(name: 'productId')
  String get productid;
  @JsonKey(name: 'product_original_price')
  String get productOriginalPrice;
  @JsonKey(name: 'item_error')
  bool get itemError;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemsCopyWith<Items> get copyWith =>
      _$ItemsCopyWithImpl<Items>(this as Items, _$identity);

  /// Serializes this Items to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Items &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.isChoose, isChoose) ||
                other.isChoose == isChoose) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.options, options) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartId,
      isChoose,
      position,
      image,
      name,
      const DeepCollectionEquality().hash(options),
      id,
      sku,
      qty,
      finalprice,
      productid,
      productOriginalPrice,
      itemError);

  @override
  String toString() {
    return 'Items(cartId: $cartId, isChoose: $isChoose, position: $position, image: $image, name: $name, options: $options, id: $id, sku: $sku, qty: $qty, finalprice: $finalprice, productid: $productid, productOriginalPrice: $productOriginalPrice, itemError: $itemError)';
  }
}

/// @nodoc
abstract mixin class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) _then) =
      _$ItemsCopyWithImpl;
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
class _$ItemsCopyWithImpl<$Res> implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._self, this._then);

  final Items _self;
  final $Res Function(Items) _then;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      cartId: null == cartId
          ? _self.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      isChoose: null == isChoose
          ? _self.isChoose
          : isChoose // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Options>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _self.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      finalprice: null == finalprice
          ? _self.finalprice
          : finalprice // ignore: cast_nullable_to_non_nullable
              as String,
      productid: null == productid
          ? _self.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      productOriginalPrice: null == productOriginalPrice
          ? _self.productOriginalPrice
          : productOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemError: null == itemError
          ? _self.itemError
          : itemError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Items implements Items {
  const _Items(
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
  factory _Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

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

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemsCopyWith<_Items> get copyWith =>
      __$ItemsCopyWithImpl<_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Items &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Items(cartId: $cartId, isChoose: $isChoose, position: $position, image: $image, name: $name, options: $options, id: $id, sku: $sku, qty: $qty, finalprice: $finalprice, productid: $productid, productOriginalPrice: $productOriginalPrice, itemError: $itemError)';
  }
}

/// @nodoc
abstract mixin class _$ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$ItemsCopyWith(_Items value, $Res Function(_Items) _then) =
      __$ItemsCopyWithImpl;
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
class __$ItemsCopyWithImpl<$Res> implements _$ItemsCopyWith<$Res> {
  __$ItemsCopyWithImpl(this._self, this._then);

  final _Items _self;
  final $Res Function(_Items) _then;

  /// Create a copy of Items
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Items(
      cartId: null == cartId
          ? _self.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      isChoose: null == isChoose
          ? _self.isChoose
          : isChoose // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Options>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _self.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      finalprice: null == finalprice
          ? _self.finalprice
          : finalprice // ignore: cast_nullable_to_non_nullable
              as String,
      productid: null == productid
          ? _self.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      productOriginalPrice: null == productOriginalPrice
          ? _self.productOriginalPrice
          : productOriginalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemError: null == itemError
          ? _self.itemError
          : itemError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$Options {
  @JsonKey(name: 'label')
  String get label;
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of Options
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OptionsCopyWith<Options> get copyWith =>
      _$OptionsCopyWithImpl<Options>(this as Options, _$identity);

  /// Serializes this Options to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Options &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @override
  String toString() {
    return 'Options(label: $label, value: $value)';
  }
}

/// @nodoc
abstract mixin class $OptionsCopyWith<$Res> {
  factory $OptionsCopyWith(Options value, $Res Function(Options) _then) =
      _$OptionsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$OptionsCopyWithImpl<$Res> implements $OptionsCopyWith<$Res> {
  _$OptionsCopyWithImpl(this._self, this._then);

  final Options _self;
  final $Res Function(Options) _then;

  /// Create a copy of Options
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Options implements Options {
  const _Options(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'value') required this.value});
  factory _Options.fromJson(Map<String, dynamic> json) =>
      _$OptionsFromJson(json);

  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'value')
  final String value;

  /// Create a copy of Options
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OptionsCopyWith<_Options> get copyWith =>
      __$OptionsCopyWithImpl<_Options>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OptionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Options &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @override
  String toString() {
    return 'Options(label: $label, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$OptionsCopyWith<$Res> implements $OptionsCopyWith<$Res> {
  factory _$OptionsCopyWith(_Options value, $Res Function(_Options) _then) =
      __$OptionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$OptionsCopyWithImpl<$Res> implements _$OptionsCopyWith<$Res> {
  __$OptionsCopyWithImpl(this._self, this._then);

  final _Options _self;
  final $Res Function(_Options) _then;

  /// Create a copy of Options
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_Options(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
