import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

part 'test.g.dart';

@freezed
sealed class Root with _$Root {
  const factory Root({
    @JsonKey(name: 'Current_currency') @Default('') String currentCurrency,
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'items_qty') @Default(0) int itemsQty,
    @JsonKey(name: 'cart_points') @Default('') String cartPoints,
    @JsonKey(name: 'BaseSubtotalWithDiscount')
    @Default(0.0)
    double basesubtotalwithdiscount,
    @JsonKey(name: 'subtotal') @Default(0.0) double subtotal,
    @JsonKey(name: 'base_subtotal') @Default(0.0) double baseSubtotal,
    @JsonKey(name: 'base_discount_value') @Default(0) int baseDiscountValue,
    @JsonKey(name: 'cart_notification')
    @Default([])
    List<String> cartNotification,
    @JsonKey(name: 'quote_currency') @Default('') String quoteCurrency,
    @JsonKey(name: 'maxSize') @Default(0) int maxsize,
    @JsonKey(name: 'items') @Default([]) List<Items> items,
    @JsonKey(name: 'success') @Default(false) bool success,
  }) = _Root;

  factory Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);
}

@freezed
sealed class Items with _$Items {
  const factory Items({
    @JsonKey(name: 'cart_id') @Default('') String cartId,
    @JsonKey(name: 'is_choose') @Default(false) bool isChoose,
    @JsonKey(name: 'position') @Default('') String position,
    @JsonKey(name: 'image') @Default('') String image,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'options') @Default([]) List<Options> options,
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'sku') @Default('') String sku,
    @JsonKey(name: 'qty') @Default(0) int qty,
    @JsonKey(name: 'finalPrice') @Default('') String finalprice,
    @JsonKey(name: 'productId') @Default('') String productid,
    @JsonKey(name: 'product_original_price')
    @Default('')
    String productOriginalPrice,
    @JsonKey(name: 'item_error') @Default(false) bool itemError,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
sealed class Options with _$Options {
  const factory Options({
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'value') required String value,
  }) = _Options;

  factory Options.fromJson(Map<String, dynamic> json) =>
      _$OptionsFromJson(json);
}
