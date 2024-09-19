// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandItem _$BrandItemFromJson(Map<String, dynamic> json) {
  return _BrandItem.fromJson(json);
}

/// @nodoc
mixin _$BrandItem {
  @JsonKey(name: 'brandId')
  int get brandid => throw _privateConstructorUsedError;
  @JsonKey(name: 'cid')
  int get cid => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandName')
  String get brandname => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandLogo')
  String get brandlogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandFeatures')
  String get brandfeatures => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales')
  int get sales => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxDiscountAmount')
  int get maxdiscountamount => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxDiscount')
  double get maxdiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandDesc')
  String get branddesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort')
  int get sort => throw _privateConstructorUsedError;
  @JsonKey(name: 'goodsList')
  IList<BrandGoodslist> get goodslist => throw _privateConstructorUsedError;

  /// Serializes this BrandItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res, BrandItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'brandId') int brandid,
      @JsonKey(name: 'cid') int cid,
      @JsonKey(name: 'brandName') String brandname,
      @JsonKey(name: 'brandLogo') String brandlogo,
      @JsonKey(name: 'brandFeatures') String brandfeatures,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'maxDiscountAmount') int maxdiscountamount,
      @JsonKey(name: 'maxDiscount') double maxdiscount,
      @JsonKey(name: 'brandDesc') String branddesc,
      @JsonKey(name: 'sort') int sort,
      @JsonKey(name: 'goodsList') IList<BrandGoodslist> goodslist});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res, $Val extends BrandItem>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandid = null,
    Object? cid = null,
    Object? brandname = null,
    Object? brandlogo = null,
    Object? brandfeatures = null,
    Object? sales = null,
    Object? maxdiscountamount = null,
    Object? maxdiscount = null,
    Object? branddesc = null,
    Object? sort = null,
    Object? goodslist = null,
  }) {
    return _then(_value.copyWith(
      brandid: null == brandid
          ? _value.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
      brandname: null == brandname
          ? _value.brandname
          : brandname // ignore: cast_nullable_to_non_nullable
              as String,
      brandlogo: null == brandlogo
          ? _value.brandlogo
          : brandlogo // ignore: cast_nullable_to_non_nullable
              as String,
      brandfeatures: null == brandfeatures
          ? _value.brandfeatures
          : brandfeatures // ignore: cast_nullable_to_non_nullable
              as String,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscountamount: null == maxdiscountamount
          ? _value.maxdiscountamount
          : maxdiscountamount // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscount: null == maxdiscount
          ? _value.maxdiscount
          : maxdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      branddesc: null == branddesc
          ? _value.branddesc
          : branddesc // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      goodslist: null == goodslist
          ? _value.goodslist
          : goodslist // ignore: cast_nullable_to_non_nullable
              as IList<BrandGoodslist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandItemImplCopyWith<$Res>
    implements $BrandItemCopyWith<$Res> {
  factory _$$BrandItemImplCopyWith(
          _$BrandItemImpl value, $Res Function(_$BrandItemImpl) then) =
      __$$BrandItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'brandId') int brandid,
      @JsonKey(name: 'cid') int cid,
      @JsonKey(name: 'brandName') String brandname,
      @JsonKey(name: 'brandLogo') String brandlogo,
      @JsonKey(name: 'brandFeatures') String brandfeatures,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'maxDiscountAmount') int maxdiscountamount,
      @JsonKey(name: 'maxDiscount') double maxdiscount,
      @JsonKey(name: 'brandDesc') String branddesc,
      @JsonKey(name: 'sort') int sort,
      @JsonKey(name: 'goodsList') IList<BrandGoodslist> goodslist});
}

/// @nodoc
class __$$BrandItemImplCopyWithImpl<$Res>
    extends _$BrandItemCopyWithImpl<$Res, _$BrandItemImpl>
    implements _$$BrandItemImplCopyWith<$Res> {
  __$$BrandItemImplCopyWithImpl(
      _$BrandItemImpl _value, $Res Function(_$BrandItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandid = null,
    Object? cid = null,
    Object? brandname = null,
    Object? brandlogo = null,
    Object? brandfeatures = null,
    Object? sales = null,
    Object? maxdiscountamount = null,
    Object? maxdiscount = null,
    Object? branddesc = null,
    Object? sort = null,
    Object? goodslist = null,
  }) {
    return _then(_$BrandItemImpl(
      brandid: null == brandid
          ? _value.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
      brandname: null == brandname
          ? _value.brandname
          : brandname // ignore: cast_nullable_to_non_nullable
              as String,
      brandlogo: null == brandlogo
          ? _value.brandlogo
          : brandlogo // ignore: cast_nullable_to_non_nullable
              as String,
      brandfeatures: null == brandfeatures
          ? _value.brandfeatures
          : brandfeatures // ignore: cast_nullable_to_non_nullable
              as String,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscountamount: null == maxdiscountamount
          ? _value.maxdiscountamount
          : maxdiscountamount // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscount: null == maxdiscount
          ? _value.maxdiscount
          : maxdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      branddesc: null == branddesc
          ? _value.branddesc
          : branddesc // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      goodslist: null == goodslist
          ? _value.goodslist
          : goodslist // ignore: cast_nullable_to_non_nullable
              as IList<BrandGoodslist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandItemImpl extends _BrandItem {
  const _$BrandItemImpl(
      {@JsonKey(name: 'brandId') this.brandid = 0,
      @JsonKey(name: 'cid') this.cid = 0,
      @JsonKey(name: 'brandName') this.brandname = '',
      @JsonKey(name: 'brandLogo') this.brandlogo = '',
      @JsonKey(name: 'brandFeatures') this.brandfeatures = '',
      @JsonKey(name: 'sales') this.sales = 0,
      @JsonKey(name: 'maxDiscountAmount') this.maxdiscountamount = 0,
      @JsonKey(name: 'maxDiscount') this.maxdiscount = 0.0,
      @JsonKey(name: 'brandDesc') this.branddesc = '',
      @JsonKey(name: 'sort') this.sort = 0,
      @JsonKey(name: 'goodsList') this.goodslist = const IListConst([])})
      : super._();

  factory _$BrandItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemImplFromJson(json);

  @override
  @JsonKey(name: 'brandId')
  final int brandid;
  @override
  @JsonKey(name: 'cid')
  final int cid;
  @override
  @JsonKey(name: 'brandName')
  final String brandname;
  @override
  @JsonKey(name: 'brandLogo')
  final String brandlogo;
  @override
  @JsonKey(name: 'brandFeatures')
  final String brandfeatures;
  @override
  @JsonKey(name: 'sales')
  final int sales;
  @override
  @JsonKey(name: 'maxDiscountAmount')
  final int maxdiscountamount;
  @override
  @JsonKey(name: 'maxDiscount')
  final double maxdiscount;
  @override
  @JsonKey(name: 'brandDesc')
  final String branddesc;
  @override
  @JsonKey(name: 'sort')
  final int sort;
  @override
  @JsonKey(name: 'goodsList')
  final IList<BrandGoodslist> goodslist;

  @override
  String toString() {
    return 'BrandItem(brandid: $brandid, cid: $cid, brandname: $brandname, brandlogo: $brandlogo, brandfeatures: $brandfeatures, sales: $sales, maxdiscountamount: $maxdiscountamount, maxdiscount: $maxdiscount, branddesc: $branddesc, sort: $sort, goodslist: $goodslist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandItemImpl &&
            (identical(other.brandid, brandid) || other.brandid == brandid) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.brandname, brandname) ||
                other.brandname == brandname) &&
            (identical(other.brandlogo, brandlogo) ||
                other.brandlogo == brandlogo) &&
            (identical(other.brandfeatures, brandfeatures) ||
                other.brandfeatures == brandfeatures) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.maxdiscountamount, maxdiscountamount) ||
                other.maxdiscountamount == maxdiscountamount) &&
            (identical(other.maxdiscount, maxdiscount) ||
                other.maxdiscount == maxdiscount) &&
            (identical(other.branddesc, branddesc) ||
                other.branddesc == branddesc) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality().equals(other.goodslist, goodslist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brandid,
      cid,
      brandname,
      brandlogo,
      brandfeatures,
      sales,
      maxdiscountamount,
      maxdiscount,
      branddesc,
      sort,
      const DeepCollectionEquality().hash(goodslist));

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandItemImplCopyWith<_$BrandItemImpl> get copyWith =>
      __$$BrandItemImplCopyWithImpl<_$BrandItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemImplToJson(
      this,
    );
  }
}

abstract class _BrandItem extends BrandItem {
  const factory _BrandItem(
          {@JsonKey(name: 'brandId') final int brandid,
          @JsonKey(name: 'cid') final int cid,
          @JsonKey(name: 'brandName') final String brandname,
          @JsonKey(name: 'brandLogo') final String brandlogo,
          @JsonKey(name: 'brandFeatures') final String brandfeatures,
          @JsonKey(name: 'sales') final int sales,
          @JsonKey(name: 'maxDiscountAmount') final int maxdiscountamount,
          @JsonKey(name: 'maxDiscount') final double maxdiscount,
          @JsonKey(name: 'brandDesc') final String branddesc,
          @JsonKey(name: 'sort') final int sort,
          @JsonKey(name: 'goodsList') final IList<BrandGoodslist> goodslist}) =
      _$BrandItemImpl;
  const _BrandItem._() : super._();

  factory _BrandItem.fromJson(Map<String, dynamic> json) =
      _$BrandItemImpl.fromJson;

  @override
  @JsonKey(name: 'brandId')
  int get brandid;
  @override
  @JsonKey(name: 'cid')
  int get cid;
  @override
  @JsonKey(name: 'brandName')
  String get brandname;
  @override
  @JsonKey(name: 'brandLogo')
  String get brandlogo;
  @override
  @JsonKey(name: 'brandFeatures')
  String get brandfeatures;
  @override
  @JsonKey(name: 'sales')
  int get sales;
  @override
  @JsonKey(name: 'maxDiscountAmount')
  int get maxdiscountamount;
  @override
  @JsonKey(name: 'maxDiscount')
  double get maxdiscount;
  @override
  @JsonKey(name: 'brandDesc')
  String get branddesc;
  @override
  @JsonKey(name: 'sort')
  int get sort;
  @override
  @JsonKey(name: 'goodsList')
  IList<BrandGoodslist> get goodslist;

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandItemImplCopyWith<_$BrandItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandGoodslist _$BrandGoodslistFromJson(Map<String, dynamic> json) {
  return _BrandGoodslist.fromJson(json);
}

/// @nodoc
mixin _$BrandGoodslist {
  @JsonKey(name: 'activityType')
  num get activitytype => throw _privateConstructorUsedError;
  @JsonKey(name: 'actualPrice')
  num get actualprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandId')
  String get brandid => throw _privateConstructorUsedError;
  @JsonKey(name: 'cid')
  num get cid => throw _privateConstructorUsedError;
  @JsonKey(name: 'commissionRate')
  num get commissionrate => throw _privateConstructorUsedError;
  @JsonKey(name: 'commissionType')
  num get commissiontype => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponConditions')
  String get couponconditions => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponEndTime')
  String get couponendtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponId')
  String get couponid => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponLink')
  String get couponlink => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponPrice')
  num get couponprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponReceiveNum')
  num get couponreceivenum => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponStartTime')
  String get couponstarttime => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponTotalNum')
  num get coupontotalnum => throw _privateConstructorUsedError;
  @JsonKey(name: 'dTitle')
  String get dtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'dailySales')
  num get dailysales => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc')
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  num get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'flagshipStore')
  num get flagshipstore => throw _privateConstructorUsedError;
  @JsonKey(name: 'freeshipRemoteDistrct')
  num get freeshipremotedistrct => throw _privateConstructorUsedError;
  @JsonKey(name: 'goodsId')
  String get goodsid => throw _privateConstructorUsedError;
  @JsonKey(name: 'goodsSign')
  String get goodssign => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mainPic')
  String get mainpic => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketingMainPic')
  String get marketingmainpic => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthSales')
  num get monthsales => throw _privateConstructorUsedError;
  @JsonKey(name: 'originPrice')
  num get originprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialText')
  List<dynamic> get specialtext => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  String get video => throw _privateConstructorUsedError;

  /// Serializes this BrandGoodslist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandGoodslistCopyWith<BrandGoodslist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandGoodslistCopyWith<$Res> {
  factory $BrandGoodslistCopyWith(
          BrandGoodslist value, $Res Function(BrandGoodslist) then) =
      _$BrandGoodslistCopyWithImpl<$Res, BrandGoodslist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'activityType') num activitytype,
      @JsonKey(name: 'actualPrice') num actualprice,
      @JsonKey(name: 'brandId') String brandid,
      @JsonKey(name: 'cid') num cid,
      @JsonKey(name: 'commissionRate') num commissionrate,
      @JsonKey(name: 'commissionType') num commissiontype,
      @JsonKey(name: 'couponConditions') String couponconditions,
      @JsonKey(name: 'couponEndTime') String couponendtime,
      @JsonKey(name: 'couponId') String couponid,
      @JsonKey(name: 'couponLink') String couponlink,
      @JsonKey(name: 'couponPrice') num couponprice,
      @JsonKey(name: 'couponReceiveNum') num couponreceivenum,
      @JsonKey(name: 'couponStartTime') String couponstarttime,
      @JsonKey(name: 'couponTotalNum') num coupontotalnum,
      @JsonKey(name: 'dTitle') String dtitle,
      @JsonKey(name: 'dailySales') num dailysales,
      @JsonKey(name: 'desc') String desc,
      @JsonKey(name: 'discount') num discount,
      @JsonKey(name: 'flagshipStore') num flagshipstore,
      @JsonKey(name: 'freeshipRemoteDistrct') num freeshipremotedistrct,
      @JsonKey(name: 'goodsId') String goodsid,
      @JsonKey(name: 'goodsSign') String goodssign,
      @JsonKey(name: 'id') num id,
      @JsonKey(name: 'mainPic') String mainpic,
      @JsonKey(name: 'marketingMainPic') String marketingmainpic,
      @JsonKey(name: 'monthSales') num monthsales,
      @JsonKey(name: 'originPrice') num originprice,
      @JsonKey(name: 'specialText') List<dynamic> specialtext,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'video') String video});
}

/// @nodoc
class _$BrandGoodslistCopyWithImpl<$Res, $Val extends BrandGoodslist>
    implements $BrandGoodslistCopyWith<$Res> {
  _$BrandGoodslistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activitytype = null,
    Object? actualprice = null,
    Object? brandid = null,
    Object? cid = null,
    Object? commissionrate = null,
    Object? commissiontype = null,
    Object? couponconditions = null,
    Object? couponendtime = null,
    Object? couponid = null,
    Object? couponlink = null,
    Object? couponprice = null,
    Object? couponreceivenum = null,
    Object? couponstarttime = null,
    Object? coupontotalnum = null,
    Object? dtitle = null,
    Object? dailysales = null,
    Object? desc = null,
    Object? discount = null,
    Object? flagshipstore = null,
    Object? freeshipremotedistrct = null,
    Object? goodsid = null,
    Object? goodssign = null,
    Object? id = null,
    Object? mainpic = null,
    Object? marketingmainpic = null,
    Object? monthsales = null,
    Object? originprice = null,
    Object? specialtext = null,
    Object? title = null,
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      activitytype: null == activitytype
          ? _value.activitytype
          : activitytype // ignore: cast_nullable_to_non_nullable
              as num,
      actualprice: null == actualprice
          ? _value.actualprice
          : actualprice // ignore: cast_nullable_to_non_nullable
              as num,
      brandid: null == brandid
          ? _value.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as num,
      commissionrate: null == commissionrate
          ? _value.commissionrate
          : commissionrate // ignore: cast_nullable_to_non_nullable
              as num,
      commissiontype: null == commissiontype
          ? _value.commissiontype
          : commissiontype // ignore: cast_nullable_to_non_nullable
              as num,
      couponconditions: null == couponconditions
          ? _value.couponconditions
          : couponconditions // ignore: cast_nullable_to_non_nullable
              as String,
      couponendtime: null == couponendtime
          ? _value.couponendtime
          : couponendtime // ignore: cast_nullable_to_non_nullable
              as String,
      couponid: null == couponid
          ? _value.couponid
          : couponid // ignore: cast_nullable_to_non_nullable
              as String,
      couponlink: null == couponlink
          ? _value.couponlink
          : couponlink // ignore: cast_nullable_to_non_nullable
              as String,
      couponprice: null == couponprice
          ? _value.couponprice
          : couponprice // ignore: cast_nullable_to_non_nullable
              as num,
      couponreceivenum: null == couponreceivenum
          ? _value.couponreceivenum
          : couponreceivenum // ignore: cast_nullable_to_non_nullable
              as num,
      couponstarttime: null == couponstarttime
          ? _value.couponstarttime
          : couponstarttime // ignore: cast_nullable_to_non_nullable
              as String,
      coupontotalnum: null == coupontotalnum
          ? _value.coupontotalnum
          : coupontotalnum // ignore: cast_nullable_to_non_nullable
              as num,
      dtitle: null == dtitle
          ? _value.dtitle
          : dtitle // ignore: cast_nullable_to_non_nullable
              as String,
      dailysales: null == dailysales
          ? _value.dailysales
          : dailysales // ignore: cast_nullable_to_non_nullable
              as num,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      flagshipstore: null == flagshipstore
          ? _value.flagshipstore
          : flagshipstore // ignore: cast_nullable_to_non_nullable
              as num,
      freeshipremotedistrct: null == freeshipremotedistrct
          ? _value.freeshipremotedistrct
          : freeshipremotedistrct // ignore: cast_nullable_to_non_nullable
              as num,
      goodsid: null == goodsid
          ? _value.goodsid
          : goodsid // ignore: cast_nullable_to_non_nullable
              as String,
      goodssign: null == goodssign
          ? _value.goodssign
          : goodssign // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      mainpic: null == mainpic
          ? _value.mainpic
          : mainpic // ignore: cast_nullable_to_non_nullable
              as String,
      marketingmainpic: null == marketingmainpic
          ? _value.marketingmainpic
          : marketingmainpic // ignore: cast_nullable_to_non_nullable
              as String,
      monthsales: null == monthsales
          ? _value.monthsales
          : monthsales // ignore: cast_nullable_to_non_nullable
              as num,
      originprice: null == originprice
          ? _value.originprice
          : originprice // ignore: cast_nullable_to_non_nullable
              as num,
      specialtext: null == specialtext
          ? _value.specialtext
          : specialtext // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandGoodslistImplCopyWith<$Res>
    implements $BrandGoodslistCopyWith<$Res> {
  factory _$$BrandGoodslistImplCopyWith(_$BrandGoodslistImpl value,
          $Res Function(_$BrandGoodslistImpl) then) =
      __$$BrandGoodslistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'activityType') num activitytype,
      @JsonKey(name: 'actualPrice') num actualprice,
      @JsonKey(name: 'brandId') String brandid,
      @JsonKey(name: 'cid') num cid,
      @JsonKey(name: 'commissionRate') num commissionrate,
      @JsonKey(name: 'commissionType') num commissiontype,
      @JsonKey(name: 'couponConditions') String couponconditions,
      @JsonKey(name: 'couponEndTime') String couponendtime,
      @JsonKey(name: 'couponId') String couponid,
      @JsonKey(name: 'couponLink') String couponlink,
      @JsonKey(name: 'couponPrice') num couponprice,
      @JsonKey(name: 'couponReceiveNum') num couponreceivenum,
      @JsonKey(name: 'couponStartTime') String couponstarttime,
      @JsonKey(name: 'couponTotalNum') num coupontotalnum,
      @JsonKey(name: 'dTitle') String dtitle,
      @JsonKey(name: 'dailySales') num dailysales,
      @JsonKey(name: 'desc') String desc,
      @JsonKey(name: 'discount') num discount,
      @JsonKey(name: 'flagshipStore') num flagshipstore,
      @JsonKey(name: 'freeshipRemoteDistrct') num freeshipremotedistrct,
      @JsonKey(name: 'goodsId') String goodsid,
      @JsonKey(name: 'goodsSign') String goodssign,
      @JsonKey(name: 'id') num id,
      @JsonKey(name: 'mainPic') String mainpic,
      @JsonKey(name: 'marketingMainPic') String marketingmainpic,
      @JsonKey(name: 'monthSales') num monthsales,
      @JsonKey(name: 'originPrice') num originprice,
      @JsonKey(name: 'specialText') List<dynamic> specialtext,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'video') String video});
}

/// @nodoc
class __$$BrandGoodslistImplCopyWithImpl<$Res>
    extends _$BrandGoodslistCopyWithImpl<$Res, _$BrandGoodslistImpl>
    implements _$$BrandGoodslistImplCopyWith<$Res> {
  __$$BrandGoodslistImplCopyWithImpl(
      _$BrandGoodslistImpl _value, $Res Function(_$BrandGoodslistImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activitytype = null,
    Object? actualprice = null,
    Object? brandid = null,
    Object? cid = null,
    Object? commissionrate = null,
    Object? commissiontype = null,
    Object? couponconditions = null,
    Object? couponendtime = null,
    Object? couponid = null,
    Object? couponlink = null,
    Object? couponprice = null,
    Object? couponreceivenum = null,
    Object? couponstarttime = null,
    Object? coupontotalnum = null,
    Object? dtitle = null,
    Object? dailysales = null,
    Object? desc = null,
    Object? discount = null,
    Object? flagshipstore = null,
    Object? freeshipremotedistrct = null,
    Object? goodsid = null,
    Object? goodssign = null,
    Object? id = null,
    Object? mainpic = null,
    Object? marketingmainpic = null,
    Object? monthsales = null,
    Object? originprice = null,
    Object? specialtext = null,
    Object? title = null,
    Object? video = null,
  }) {
    return _then(_$BrandGoodslistImpl(
      activitytype: null == activitytype
          ? _value.activitytype
          : activitytype // ignore: cast_nullable_to_non_nullable
              as num,
      actualprice: null == actualprice
          ? _value.actualprice
          : actualprice // ignore: cast_nullable_to_non_nullable
              as num,
      brandid: null == brandid
          ? _value.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as num,
      commissionrate: null == commissionrate
          ? _value.commissionrate
          : commissionrate // ignore: cast_nullable_to_non_nullable
              as num,
      commissiontype: null == commissiontype
          ? _value.commissiontype
          : commissiontype // ignore: cast_nullable_to_non_nullable
              as num,
      couponconditions: null == couponconditions
          ? _value.couponconditions
          : couponconditions // ignore: cast_nullable_to_non_nullable
              as String,
      couponendtime: null == couponendtime
          ? _value.couponendtime
          : couponendtime // ignore: cast_nullable_to_non_nullable
              as String,
      couponid: null == couponid
          ? _value.couponid
          : couponid // ignore: cast_nullable_to_non_nullable
              as String,
      couponlink: null == couponlink
          ? _value.couponlink
          : couponlink // ignore: cast_nullable_to_non_nullable
              as String,
      couponprice: null == couponprice
          ? _value.couponprice
          : couponprice // ignore: cast_nullable_to_non_nullable
              as num,
      couponreceivenum: null == couponreceivenum
          ? _value.couponreceivenum
          : couponreceivenum // ignore: cast_nullable_to_non_nullable
              as num,
      couponstarttime: null == couponstarttime
          ? _value.couponstarttime
          : couponstarttime // ignore: cast_nullable_to_non_nullable
              as String,
      coupontotalnum: null == coupontotalnum
          ? _value.coupontotalnum
          : coupontotalnum // ignore: cast_nullable_to_non_nullable
              as num,
      dtitle: null == dtitle
          ? _value.dtitle
          : dtitle // ignore: cast_nullable_to_non_nullable
              as String,
      dailysales: null == dailysales
          ? _value.dailysales
          : dailysales // ignore: cast_nullable_to_non_nullable
              as num,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      flagshipstore: null == flagshipstore
          ? _value.flagshipstore
          : flagshipstore // ignore: cast_nullable_to_non_nullable
              as num,
      freeshipremotedistrct: null == freeshipremotedistrct
          ? _value.freeshipremotedistrct
          : freeshipremotedistrct // ignore: cast_nullable_to_non_nullable
              as num,
      goodsid: null == goodsid
          ? _value.goodsid
          : goodsid // ignore: cast_nullable_to_non_nullable
              as String,
      goodssign: null == goodssign
          ? _value.goodssign
          : goodssign // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      mainpic: null == mainpic
          ? _value.mainpic
          : mainpic // ignore: cast_nullable_to_non_nullable
              as String,
      marketingmainpic: null == marketingmainpic
          ? _value.marketingmainpic
          : marketingmainpic // ignore: cast_nullable_to_non_nullable
              as String,
      monthsales: null == monthsales
          ? _value.monthsales
          : monthsales // ignore: cast_nullable_to_non_nullable
              as num,
      originprice: null == originprice
          ? _value.originprice
          : originprice // ignore: cast_nullable_to_non_nullable
              as num,
      specialtext: null == specialtext
          ? _value._specialtext
          : specialtext // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandGoodslistImpl extends _BrandGoodslist {
  const _$BrandGoodslistImpl(
      {@JsonKey(name: 'activityType') this.activitytype = 0,
      @JsonKey(name: 'actualPrice') this.actualprice = 0,
      @JsonKey(name: 'brandId') this.brandid = '',
      @JsonKey(name: 'cid') this.cid = 0,
      @JsonKey(name: 'commissionRate') this.commissionrate = 0,
      @JsonKey(name: 'commissionType') this.commissiontype = 0,
      @JsonKey(name: 'couponConditions') this.couponconditions = '',
      @JsonKey(name: 'couponEndTime') this.couponendtime = '',
      @JsonKey(name: 'couponId') this.couponid = '',
      @JsonKey(name: 'couponLink') this.couponlink = '',
      @JsonKey(name: 'couponPrice') this.couponprice = 0,
      @JsonKey(name: 'couponReceiveNum') this.couponreceivenum = 0,
      @JsonKey(name: 'couponStartTime') this.couponstarttime = '',
      @JsonKey(name: 'couponTotalNum') this.coupontotalnum = 0,
      @JsonKey(name: 'dTitle') this.dtitle = '',
      @JsonKey(name: 'dailySales') this.dailysales = 0,
      @JsonKey(name: 'desc') this.desc = '',
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'flagshipStore') this.flagshipstore = 0,
      @JsonKey(name: 'freeshipRemoteDistrct') this.freeshipremotedistrct = 0,
      @JsonKey(name: 'goodsId') this.goodsid = '',
      @JsonKey(name: 'goodsSign') this.goodssign = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'mainPic') this.mainpic = '',
      @JsonKey(name: 'marketingMainPic') this.marketingmainpic = '',
      @JsonKey(name: 'monthSales') this.monthsales = 0,
      @JsonKey(name: 'originPrice') this.originprice = 0,
      @JsonKey(name: 'specialText') final List<dynamic> specialtext = const [],
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'video') this.video = ''})
      : _specialtext = specialtext,
        super._();

  factory _$BrandGoodslistImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandGoodslistImplFromJson(json);

  @override
  @JsonKey(name: 'activityType')
  final num activitytype;
  @override
  @JsonKey(name: 'actualPrice')
  final num actualprice;
  @override
  @JsonKey(name: 'brandId')
  final String brandid;
  @override
  @JsonKey(name: 'cid')
  final num cid;
  @override
  @JsonKey(name: 'commissionRate')
  final num commissionrate;
  @override
  @JsonKey(name: 'commissionType')
  final num commissiontype;
  @override
  @JsonKey(name: 'couponConditions')
  final String couponconditions;
  @override
  @JsonKey(name: 'couponEndTime')
  final String couponendtime;
  @override
  @JsonKey(name: 'couponId')
  final String couponid;
  @override
  @JsonKey(name: 'couponLink')
  final String couponlink;
  @override
  @JsonKey(name: 'couponPrice')
  final num couponprice;
  @override
  @JsonKey(name: 'couponReceiveNum')
  final num couponreceivenum;
  @override
  @JsonKey(name: 'couponStartTime')
  final String couponstarttime;
  @override
  @JsonKey(name: 'couponTotalNum')
  final num coupontotalnum;
  @override
  @JsonKey(name: 'dTitle')
  final String dtitle;
  @override
  @JsonKey(name: 'dailySales')
  final num dailysales;
  @override
  @JsonKey(name: 'desc')
  final String desc;
  @override
  @JsonKey(name: 'discount')
  final num discount;
  @override
  @JsonKey(name: 'flagshipStore')
  final num flagshipstore;
  @override
  @JsonKey(name: 'freeshipRemoteDistrct')
  final num freeshipremotedistrct;
  @override
  @JsonKey(name: 'goodsId')
  final String goodsid;
  @override
  @JsonKey(name: 'goodsSign')
  final String goodssign;
  @override
  @JsonKey(name: 'id')
  final num id;
  @override
  @JsonKey(name: 'mainPic')
  final String mainpic;
  @override
  @JsonKey(name: 'marketingMainPic')
  final String marketingmainpic;
  @override
  @JsonKey(name: 'monthSales')
  final num monthsales;
  @override
  @JsonKey(name: 'originPrice')
  final num originprice;
  final List<dynamic> _specialtext;
  @override
  @JsonKey(name: 'specialText')
  List<dynamic> get specialtext {
    if (_specialtext is EqualUnmodifiableListView) return _specialtext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialtext);
  }

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'video')
  final String video;

  @override
  String toString() {
    return 'BrandGoodslist(activitytype: $activitytype, actualprice: $actualprice, brandid: $brandid, cid: $cid, commissionrate: $commissionrate, commissiontype: $commissiontype, couponconditions: $couponconditions, couponendtime: $couponendtime, couponid: $couponid, couponlink: $couponlink, couponprice: $couponprice, couponreceivenum: $couponreceivenum, couponstarttime: $couponstarttime, coupontotalnum: $coupontotalnum, dtitle: $dtitle, dailysales: $dailysales, desc: $desc, discount: $discount, flagshipstore: $flagshipstore, freeshipremotedistrct: $freeshipremotedistrct, goodsid: $goodsid, goodssign: $goodssign, id: $id, mainpic: $mainpic, marketingmainpic: $marketingmainpic, monthsales: $monthsales, originprice: $originprice, specialtext: $specialtext, title: $title, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandGoodslistImpl &&
            (identical(other.activitytype, activitytype) ||
                other.activitytype == activitytype) &&
            (identical(other.actualprice, actualprice) ||
                other.actualprice == actualprice) &&
            (identical(other.brandid, brandid) || other.brandid == brandid) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.commissionrate, commissionrate) ||
                other.commissionrate == commissionrate) &&
            (identical(other.commissiontype, commissiontype) ||
                other.commissiontype == commissiontype) &&
            (identical(other.couponconditions, couponconditions) ||
                other.couponconditions == couponconditions) &&
            (identical(other.couponendtime, couponendtime) ||
                other.couponendtime == couponendtime) &&
            (identical(other.couponid, couponid) ||
                other.couponid == couponid) &&
            (identical(other.couponlink, couponlink) ||
                other.couponlink == couponlink) &&
            (identical(other.couponprice, couponprice) ||
                other.couponprice == couponprice) &&
            (identical(other.couponreceivenum, couponreceivenum) ||
                other.couponreceivenum == couponreceivenum) &&
            (identical(other.couponstarttime, couponstarttime) ||
                other.couponstarttime == couponstarttime) &&
            (identical(other.coupontotalnum, coupontotalnum) ||
                other.coupontotalnum == coupontotalnum) &&
            (identical(other.dtitle, dtitle) || other.dtitle == dtitle) &&
            (identical(other.dailysales, dailysales) ||
                other.dailysales == dailysales) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.flagshipstore, flagshipstore) ||
                other.flagshipstore == flagshipstore) &&
            (identical(other.freeshipremotedistrct, freeshipremotedistrct) ||
                other.freeshipremotedistrct == freeshipremotedistrct) &&
            (identical(other.goodsid, goodsid) || other.goodsid == goodsid) &&
            (identical(other.goodssign, goodssign) ||
                other.goodssign == goodssign) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainpic, mainpic) || other.mainpic == mainpic) &&
            (identical(other.marketingmainpic, marketingmainpic) ||
                other.marketingmainpic == marketingmainpic) &&
            (identical(other.monthsales, monthsales) ||
                other.monthsales == monthsales) &&
            (identical(other.originprice, originprice) ||
                other.originprice == originprice) &&
            const DeepCollectionEquality()
                .equals(other._specialtext, _specialtext) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        activitytype,
        actualprice,
        brandid,
        cid,
        commissionrate,
        commissiontype,
        couponconditions,
        couponendtime,
        couponid,
        couponlink,
        couponprice,
        couponreceivenum,
        couponstarttime,
        coupontotalnum,
        dtitle,
        dailysales,
        desc,
        discount,
        flagshipstore,
        freeshipremotedistrct,
        goodsid,
        goodssign,
        id,
        mainpic,
        marketingmainpic,
        monthsales,
        originprice,
        const DeepCollectionEquality().hash(_specialtext),
        title,
        video
      ]);

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandGoodslistImplCopyWith<_$BrandGoodslistImpl> get copyWith =>
      __$$BrandGoodslistImplCopyWithImpl<_$BrandGoodslistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandGoodslistImplToJson(
      this,
    );
  }
}

abstract class _BrandGoodslist extends BrandGoodslist {
  const factory _BrandGoodslist(
      {@JsonKey(name: 'activityType') final num activitytype,
      @JsonKey(name: 'actualPrice') final num actualprice,
      @JsonKey(name: 'brandId') final String brandid,
      @JsonKey(name: 'cid') final num cid,
      @JsonKey(name: 'commissionRate') final num commissionrate,
      @JsonKey(name: 'commissionType') final num commissiontype,
      @JsonKey(name: 'couponConditions') final String couponconditions,
      @JsonKey(name: 'couponEndTime') final String couponendtime,
      @JsonKey(name: 'couponId') final String couponid,
      @JsonKey(name: 'couponLink') final String couponlink,
      @JsonKey(name: 'couponPrice') final num couponprice,
      @JsonKey(name: 'couponReceiveNum') final num couponreceivenum,
      @JsonKey(name: 'couponStartTime') final String couponstarttime,
      @JsonKey(name: 'couponTotalNum') final num coupontotalnum,
      @JsonKey(name: 'dTitle') final String dtitle,
      @JsonKey(name: 'dailySales') final num dailysales,
      @JsonKey(name: 'desc') final String desc,
      @JsonKey(name: 'discount') final num discount,
      @JsonKey(name: 'flagshipStore') final num flagshipstore,
      @JsonKey(name: 'freeshipRemoteDistrct') final num freeshipremotedistrct,
      @JsonKey(name: 'goodsId') final String goodsid,
      @JsonKey(name: 'goodsSign') final String goodssign,
      @JsonKey(name: 'id') final num id,
      @JsonKey(name: 'mainPic') final String mainpic,
      @JsonKey(name: 'marketingMainPic') final String marketingmainpic,
      @JsonKey(name: 'monthSales') final num monthsales,
      @JsonKey(name: 'originPrice') final num originprice,
      @JsonKey(name: 'specialText') final List<dynamic> specialtext,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'video') final String video}) = _$BrandGoodslistImpl;
  const _BrandGoodslist._() : super._();

  factory _BrandGoodslist.fromJson(Map<String, dynamic> json) =
      _$BrandGoodslistImpl.fromJson;

  @override
  @JsonKey(name: 'activityType')
  num get activitytype;
  @override
  @JsonKey(name: 'actualPrice')
  num get actualprice;
  @override
  @JsonKey(name: 'brandId')
  String get brandid;
  @override
  @JsonKey(name: 'cid')
  num get cid;
  @override
  @JsonKey(name: 'commissionRate')
  num get commissionrate;
  @override
  @JsonKey(name: 'commissionType')
  num get commissiontype;
  @override
  @JsonKey(name: 'couponConditions')
  String get couponconditions;
  @override
  @JsonKey(name: 'couponEndTime')
  String get couponendtime;
  @override
  @JsonKey(name: 'couponId')
  String get couponid;
  @override
  @JsonKey(name: 'couponLink')
  String get couponlink;
  @override
  @JsonKey(name: 'couponPrice')
  num get couponprice;
  @override
  @JsonKey(name: 'couponReceiveNum')
  num get couponreceivenum;
  @override
  @JsonKey(name: 'couponStartTime')
  String get couponstarttime;
  @override
  @JsonKey(name: 'couponTotalNum')
  num get coupontotalnum;
  @override
  @JsonKey(name: 'dTitle')
  String get dtitle;
  @override
  @JsonKey(name: 'dailySales')
  num get dailysales;
  @override
  @JsonKey(name: 'desc')
  String get desc;
  @override
  @JsonKey(name: 'discount')
  num get discount;
  @override
  @JsonKey(name: 'flagshipStore')
  num get flagshipstore;
  @override
  @JsonKey(name: 'freeshipRemoteDistrct')
  num get freeshipremotedistrct;
  @override
  @JsonKey(name: 'goodsId')
  String get goodsid;
  @override
  @JsonKey(name: 'goodsSign')
  String get goodssign;
  @override
  @JsonKey(name: 'id')
  num get id;
  @override
  @JsonKey(name: 'mainPic')
  String get mainpic;
  @override
  @JsonKey(name: 'marketingMainPic')
  String get marketingmainpic;
  @override
  @JsonKey(name: 'monthSales')
  num get monthsales;
  @override
  @JsonKey(name: 'originPrice')
  num get originprice;
  @override
  @JsonKey(name: 'specialText')
  List<dynamic> get specialtext;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'video')
  String get video;

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandGoodslistImplCopyWith<_$BrandGoodslistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandListResult _$BrandListResultFromJson(Map<String, dynamic> json) {
  return _BrandListResult.fromJson(json);
}

/// @nodoc
mixin _$BrandListResult {
  IList<BrandItem> get lists => throw _privateConstructorUsedError;
  int get pagesize => throw _privateConstructorUsedError;
  int get currentpage => throw _privateConstructorUsedError;
  int get totalcount => throw _privateConstructorUsedError;

  /// Serializes this BrandListResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandListResultCopyWith<BrandListResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandListResultCopyWith<$Res> {
  factory $BrandListResultCopyWith(
          BrandListResult value, $Res Function(BrandListResult) then) =
      _$BrandListResultCopyWithImpl<$Res, BrandListResult>;
  @useResult
  $Res call(
      {IList<BrandItem> lists, int pagesize, int currentpage, int totalcount});
}

/// @nodoc
class _$BrandListResultCopyWithImpl<$Res, $Val extends BrandListResult>
    implements $BrandListResultCopyWith<$Res> {
  _$BrandListResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lists = null,
    Object? pagesize = null,
    Object? currentpage = null,
    Object? totalcount = null,
  }) {
    return _then(_value.copyWith(
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as IList<BrandItem>,
      pagesize: null == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
      currentpage: null == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int,
      totalcount: null == totalcount
          ? _value.totalcount
          : totalcount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandListResultImplCopyWith<$Res>
    implements $BrandListResultCopyWith<$Res> {
  factory _$$BrandListResultImplCopyWith(_$BrandListResultImpl value,
          $Res Function(_$BrandListResultImpl) then) =
      __$$BrandListResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<BrandItem> lists, int pagesize, int currentpage, int totalcount});
}

/// @nodoc
class __$$BrandListResultImplCopyWithImpl<$Res>
    extends _$BrandListResultCopyWithImpl<$Res, _$BrandListResultImpl>
    implements _$$BrandListResultImplCopyWith<$Res> {
  __$$BrandListResultImplCopyWithImpl(
      _$BrandListResultImpl _value, $Res Function(_$BrandListResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lists = null,
    Object? pagesize = null,
    Object? currentpage = null,
    Object? totalcount = null,
  }) {
    return _then(_$BrandListResultImpl(
      lists: null == lists
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as IList<BrandItem>,
      pagesize: null == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
      currentpage: null == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int,
      totalcount: null == totalcount
          ? _value.totalcount
          : totalcount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandListResultImpl extends _BrandListResult {
  const _$BrandListResultImpl(
      {this.lists = const IListConst([]),
      this.pagesize = 0,
      this.currentpage = 0,
      this.totalcount = 0})
      : super._();

  factory _$BrandListResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandListResultImplFromJson(json);

  @override
  @JsonKey()
  final IList<BrandItem> lists;
  @override
  @JsonKey()
  final int pagesize;
  @override
  @JsonKey()
  final int currentpage;
  @override
  @JsonKey()
  final int totalcount;

  @override
  String toString() {
    return 'BrandListResult(lists: $lists, pagesize: $pagesize, currentpage: $currentpage, totalcount: $totalcount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandListResultImpl &&
            const DeepCollectionEquality().equals(other.lists, lists) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize) &&
            (identical(other.currentpage, currentpage) ||
                other.currentpage == currentpage) &&
            (identical(other.totalcount, totalcount) ||
                other.totalcount == totalcount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lists),
      pagesize,
      currentpage,
      totalcount);

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandListResultImplCopyWith<_$BrandListResultImpl> get copyWith =>
      __$$BrandListResultImplCopyWithImpl<_$BrandListResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandListResultImplToJson(
      this,
    );
  }
}

abstract class _BrandListResult extends BrandListResult {
  const factory _BrandListResult(
      {final IList<BrandItem> lists,
      final int pagesize,
      final int currentpage,
      final int totalcount}) = _$BrandListResultImpl;
  const _BrandListResult._() : super._();

  factory _BrandListResult.fromJson(Map<String, dynamic> json) =
      _$BrandListResultImpl.fromJson;

  @override
  IList<BrandItem> get lists;
  @override
  int get pagesize;
  @override
  int get currentpage;
  @override
  int get totalcount;

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandListResultImplCopyWith<_$BrandListResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
