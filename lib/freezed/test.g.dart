// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Root _$RootFromJson(Map<String, dynamic> json) => _Root(
  currentCurrency: json['Current_currency'] as String? ?? '',
  id: json['id'] as String? ?? '',
  itemsQty: (json['items_qty'] as num?)?.toInt() ?? 0,
  cartPoints: json['cart_points'] as String? ?? '',
  basesubtotalwithdiscount:
      (json['BaseSubtotalWithDiscount'] as num?)?.toDouble() ?? 0.0,
  subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0.0,
  baseSubtotal: (json['base_subtotal'] as num?)?.toDouble() ?? 0.0,
  baseDiscountValue: (json['base_discount_value'] as num?)?.toInt() ?? 0,
  cartNotification:
      (json['cart_notification'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  quoteCurrency: json['quote_currency'] as String? ?? '',
  maxsize: (json['maxSize'] as num?)?.toInt() ?? 0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  success: json['success'] as bool? ?? false,
);

Map<String, dynamic> _$RootToJson(_Root instance) => <String, dynamic>{
  'Current_currency': instance.currentCurrency,
  'id': instance.id,
  'items_qty': instance.itemsQty,
  'cart_points': instance.cartPoints,
  'BaseSubtotalWithDiscount': instance.basesubtotalwithdiscount,
  'subtotal': instance.subtotal,
  'base_subtotal': instance.baseSubtotal,
  'base_discount_value': instance.baseDiscountValue,
  'cart_notification': instance.cartNotification,
  'quote_currency': instance.quoteCurrency,
  'maxSize': instance.maxsize,
  'items': instance.items,
  'success': instance.success,
};

_Items _$ItemsFromJson(Map<String, dynamic> json) => _Items(
  cartId: json['cart_id'] as String? ?? '',
  isChoose: json['is_choose'] as bool? ?? false,
  position: json['position'] as String? ?? '',
  image: json['image'] as String? ?? '',
  name: json['name'] as String? ?? '',
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => Options.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  id: json['id'] as String? ?? '',
  sku: json['sku'] as String? ?? '',
  qty: (json['qty'] as num?)?.toInt() ?? 0,
  finalprice: json['finalPrice'] as String? ?? '',
  productid: json['productId'] as String? ?? '',
  productOriginalPrice: json['product_original_price'] as String? ?? '',
  itemError: json['item_error'] as bool? ?? false,
);

Map<String, dynamic> _$ItemsToJson(_Items instance) => <String, dynamic>{
  'cart_id': instance.cartId,
  'is_choose': instance.isChoose,
  'position': instance.position,
  'image': instance.image,
  'name': instance.name,
  'options': instance.options,
  'id': instance.id,
  'sku': instance.sku,
  'qty': instance.qty,
  'finalPrice': instance.finalprice,
  'productId': instance.productid,
  'product_original_price': instance.productOriginalPrice,
  'item_error': instance.itemError,
};

_Options _$OptionsFromJson(Map<String, dynamic> json) =>
    _Options(label: json['label'] as String, value: json['value'] as String);

Map<String, dynamic> _$OptionsToJson(_Options instance) => <String, dynamic>{
  'label': instance.label,
  'value': instance.value,
};
