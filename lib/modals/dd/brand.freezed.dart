// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandItem {
  @JsonKey(name: 'brandId')
  int get brandid;
  @JsonKey(name: 'cid')
  int get cid;
  @JsonKey(name: 'brandName')
  String get brandname;
  @JsonKey(name: 'brandLogo')
  String get brandlogo;
  @JsonKey(name: 'brandFeatures')
  String get brandfeatures;
  @JsonKey(name: 'sales')
  int get sales;
  @JsonKey(name: 'maxDiscountAmount')
  int get maxdiscountamount;
  @JsonKey(name: 'maxDiscount')
  double get maxdiscount;
  @JsonKey(name: 'brandDesc')
  String get branddesc;
  @JsonKey(name: 'sort')
  int get sort;
  @JsonKey(name: 'goodsList')
  IList<BrandGoodslist> get goodslist;

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BrandItemCopyWith<BrandItem> get copyWith =>
      _$BrandItemCopyWithImpl<BrandItem>(this as BrandItem, _$identity);

  /// Serializes this BrandItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BrandItem &&
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

  @override
  String toString() {
    return 'BrandItem(brandid: $brandid, cid: $cid, brandname: $brandname, brandlogo: $brandlogo, brandfeatures: $brandfeatures, sales: $sales, maxdiscountamount: $maxdiscountamount, maxdiscount: $maxdiscount, branddesc: $branddesc, sort: $sort, goodslist: $goodslist)';
  }
}

/// @nodoc
abstract mixin class $BrandItemCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) _then) =
      _$BrandItemCopyWithImpl;
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
class _$BrandItemCopyWithImpl<$Res> implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(this._self, this._then);

  final BrandItem _self;
  final $Res Function(BrandItem) _then;

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
    return _then(_self.copyWith(
      brandid: null == brandid
          ? _self.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
      brandname: null == brandname
          ? _self.brandname
          : brandname // ignore: cast_nullable_to_non_nullable
              as String,
      brandlogo: null == brandlogo
          ? _self.brandlogo
          : brandlogo // ignore: cast_nullable_to_non_nullable
              as String,
      brandfeatures: null == brandfeatures
          ? _self.brandfeatures
          : brandfeatures // ignore: cast_nullable_to_non_nullable
              as String,
      sales: null == sales
          ? _self.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscountamount: null == maxdiscountamount
          ? _self.maxdiscountamount
          : maxdiscountamount // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscount: null == maxdiscount
          ? _self.maxdiscount
          : maxdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      branddesc: null == branddesc
          ? _self.branddesc
          : branddesc // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      goodslist: null == goodslist
          ? _self.goodslist
          : goodslist // ignore: cast_nullable_to_non_nullable
              as IList<BrandGoodslist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BrandItem extends BrandItem {
  const _BrandItem(
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
  factory _BrandItem.fromJson(Map<String, dynamic> json) =>
      _$BrandItemFromJson(json);

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

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BrandItemCopyWith<_BrandItem> get copyWith =>
      __$BrandItemCopyWithImpl<_BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BrandItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandItem &&
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

  @override
  String toString() {
    return 'BrandItem(brandid: $brandid, cid: $cid, brandname: $brandname, brandlogo: $brandlogo, brandfeatures: $brandfeatures, sales: $sales, maxdiscountamount: $maxdiscountamount, maxdiscount: $maxdiscount, branddesc: $branddesc, sort: $sort, goodslist: $goodslist)';
  }
}

/// @nodoc
abstract mixin class _$BrandItemCopyWith<$Res>
    implements $BrandItemCopyWith<$Res> {
  factory _$BrandItemCopyWith(
          _BrandItem value, $Res Function(_BrandItem) _then) =
      __$BrandItemCopyWithImpl;
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
class __$BrandItemCopyWithImpl<$Res> implements _$BrandItemCopyWith<$Res> {
  __$BrandItemCopyWithImpl(this._self, this._then);

  final _BrandItem _self;
  final $Res Function(_BrandItem) _then;

  /// Create a copy of BrandItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_BrandItem(
      brandid: null == brandid
          ? _self.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
      brandname: null == brandname
          ? _self.brandname
          : brandname // ignore: cast_nullable_to_non_nullable
              as String,
      brandlogo: null == brandlogo
          ? _self.brandlogo
          : brandlogo // ignore: cast_nullable_to_non_nullable
              as String,
      brandfeatures: null == brandfeatures
          ? _self.brandfeatures
          : brandfeatures // ignore: cast_nullable_to_non_nullable
              as String,
      sales: null == sales
          ? _self.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscountamount: null == maxdiscountamount
          ? _self.maxdiscountamount
          : maxdiscountamount // ignore: cast_nullable_to_non_nullable
              as int,
      maxdiscount: null == maxdiscount
          ? _self.maxdiscount
          : maxdiscount // ignore: cast_nullable_to_non_nullable
              as double,
      branddesc: null == branddesc
          ? _self.branddesc
          : branddesc // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      goodslist: null == goodslist
          ? _self.goodslist
          : goodslist // ignore: cast_nullable_to_non_nullable
              as IList<BrandGoodslist>,
    ));
  }
}

/// @nodoc
mixin _$BrandGoodslist {
  @JsonKey(name: 'activityType')
  num get activitytype;
  @JsonKey(name: 'actualPrice')
  num get actualprice;
  @JsonKey(name: 'brandId')
  String get brandid;
  @JsonKey(name: 'cid')
  num get cid;
  @JsonKey(name: 'commissionRate')
  num get commissionrate;
  @JsonKey(name: 'commissionType')
  num get commissiontype;
  @JsonKey(name: 'couponConditions')
  String get couponconditions;
  @JsonKey(name: 'couponEndTime')
  String get couponendtime;
  @JsonKey(name: 'couponId')
  String get couponid;
  @JsonKey(name: 'couponLink')
  String get couponlink;
  @JsonKey(name: 'couponPrice')
  num get couponprice;
  @JsonKey(name: 'couponReceiveNum')
  num get couponreceivenum;
  @JsonKey(name: 'couponStartTime')
  String get couponstarttime;
  @JsonKey(name: 'couponTotalNum')
  num get coupontotalnum;
  @JsonKey(name: 'dTitle')
  String get dtitle;
  @JsonKey(name: 'dailySales')
  num get dailysales;
  @JsonKey(name: 'desc')
  String get desc;
  @JsonKey(name: 'discount')
  num get discount;
  @JsonKey(name: 'flagshipStore')
  num get flagshipstore;
  @JsonKey(name: 'freeshipRemoteDistrct')
  num get freeshipremotedistrct;
  @JsonKey(name: 'goodsId')
  String get goodsid;
  @JsonKey(name: 'goodsSign')
  String get goodssign;
  @JsonKey(name: 'id')
  num get id;
  @JsonKey(name: 'mainPic')
  String get mainpic;
  @JsonKey(name: 'marketingMainPic')
  String get marketingmainpic;
  @JsonKey(name: 'monthSales')
  num get monthsales;
  @JsonKey(name: 'originPrice')
  num get originprice;
  @JsonKey(name: 'specialText')
  List<dynamic> get specialtext;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'video')
  String get video;

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BrandGoodslistCopyWith<BrandGoodslist> get copyWith =>
      _$BrandGoodslistCopyWithImpl<BrandGoodslist>(
          this as BrandGoodslist, _$identity);

  /// Serializes this BrandGoodslist to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BrandGoodslist &&
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
                .equals(other.specialtext, specialtext) &&
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
        const DeepCollectionEquality().hash(specialtext),
        title,
        video
      ]);

  @override
  String toString() {
    return 'BrandGoodslist(activitytype: $activitytype, actualprice: $actualprice, brandid: $brandid, cid: $cid, commissionrate: $commissionrate, commissiontype: $commissiontype, couponconditions: $couponconditions, couponendtime: $couponendtime, couponid: $couponid, couponlink: $couponlink, couponprice: $couponprice, couponreceivenum: $couponreceivenum, couponstarttime: $couponstarttime, coupontotalnum: $coupontotalnum, dtitle: $dtitle, dailysales: $dailysales, desc: $desc, discount: $discount, flagshipstore: $flagshipstore, freeshipremotedistrct: $freeshipremotedistrct, goodsid: $goodsid, goodssign: $goodssign, id: $id, mainpic: $mainpic, marketingmainpic: $marketingmainpic, monthsales: $monthsales, originprice: $originprice, specialtext: $specialtext, title: $title, video: $video)';
  }
}

/// @nodoc
abstract mixin class $BrandGoodslistCopyWith<$Res> {
  factory $BrandGoodslistCopyWith(
          BrandGoodslist value, $Res Function(BrandGoodslist) _then) =
      _$BrandGoodslistCopyWithImpl;
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
class _$BrandGoodslistCopyWithImpl<$Res>
    implements $BrandGoodslistCopyWith<$Res> {
  _$BrandGoodslistCopyWithImpl(this._self, this._then);

  final BrandGoodslist _self;
  final $Res Function(BrandGoodslist) _then;

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
    return _then(_self.copyWith(
      activitytype: null == activitytype
          ? _self.activitytype
          : activitytype // ignore: cast_nullable_to_non_nullable
              as num,
      actualprice: null == actualprice
          ? _self.actualprice
          : actualprice // ignore: cast_nullable_to_non_nullable
              as num,
      brandid: null == brandid
          ? _self.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as num,
      commissionrate: null == commissionrate
          ? _self.commissionrate
          : commissionrate // ignore: cast_nullable_to_non_nullable
              as num,
      commissiontype: null == commissiontype
          ? _self.commissiontype
          : commissiontype // ignore: cast_nullable_to_non_nullable
              as num,
      couponconditions: null == couponconditions
          ? _self.couponconditions
          : couponconditions // ignore: cast_nullable_to_non_nullable
              as String,
      couponendtime: null == couponendtime
          ? _self.couponendtime
          : couponendtime // ignore: cast_nullable_to_non_nullable
              as String,
      couponid: null == couponid
          ? _self.couponid
          : couponid // ignore: cast_nullable_to_non_nullable
              as String,
      couponlink: null == couponlink
          ? _self.couponlink
          : couponlink // ignore: cast_nullable_to_non_nullable
              as String,
      couponprice: null == couponprice
          ? _self.couponprice
          : couponprice // ignore: cast_nullable_to_non_nullable
              as num,
      couponreceivenum: null == couponreceivenum
          ? _self.couponreceivenum
          : couponreceivenum // ignore: cast_nullable_to_non_nullable
              as num,
      couponstarttime: null == couponstarttime
          ? _self.couponstarttime
          : couponstarttime // ignore: cast_nullable_to_non_nullable
              as String,
      coupontotalnum: null == coupontotalnum
          ? _self.coupontotalnum
          : coupontotalnum // ignore: cast_nullable_to_non_nullable
              as num,
      dtitle: null == dtitle
          ? _self.dtitle
          : dtitle // ignore: cast_nullable_to_non_nullable
              as String,
      dailysales: null == dailysales
          ? _self.dailysales
          : dailysales // ignore: cast_nullable_to_non_nullable
              as num,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      flagshipstore: null == flagshipstore
          ? _self.flagshipstore
          : flagshipstore // ignore: cast_nullable_to_non_nullable
              as num,
      freeshipremotedistrct: null == freeshipremotedistrct
          ? _self.freeshipremotedistrct
          : freeshipremotedistrct // ignore: cast_nullable_to_non_nullable
              as num,
      goodsid: null == goodsid
          ? _self.goodsid
          : goodsid // ignore: cast_nullable_to_non_nullable
              as String,
      goodssign: null == goodssign
          ? _self.goodssign
          : goodssign // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      mainpic: null == mainpic
          ? _self.mainpic
          : mainpic // ignore: cast_nullable_to_non_nullable
              as String,
      marketingmainpic: null == marketingmainpic
          ? _self.marketingmainpic
          : marketingmainpic // ignore: cast_nullable_to_non_nullable
              as String,
      monthsales: null == monthsales
          ? _self.monthsales
          : monthsales // ignore: cast_nullable_to_non_nullable
              as num,
      originprice: null == originprice
          ? _self.originprice
          : originprice // ignore: cast_nullable_to_non_nullable
              as num,
      specialtext: null == specialtext
          ? _self.specialtext
          : specialtext // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BrandGoodslist extends BrandGoodslist {
  const _BrandGoodslist(
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
  factory _BrandGoodslist.fromJson(Map<String, dynamic> json) =>
      _$BrandGoodslistFromJson(json);

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

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BrandGoodslistCopyWith<_BrandGoodslist> get copyWith =>
      __$BrandGoodslistCopyWithImpl<_BrandGoodslist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BrandGoodslistToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandGoodslist &&
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

  @override
  String toString() {
    return 'BrandGoodslist(activitytype: $activitytype, actualprice: $actualprice, brandid: $brandid, cid: $cid, commissionrate: $commissionrate, commissiontype: $commissiontype, couponconditions: $couponconditions, couponendtime: $couponendtime, couponid: $couponid, couponlink: $couponlink, couponprice: $couponprice, couponreceivenum: $couponreceivenum, couponstarttime: $couponstarttime, coupontotalnum: $coupontotalnum, dtitle: $dtitle, dailysales: $dailysales, desc: $desc, discount: $discount, flagshipstore: $flagshipstore, freeshipremotedistrct: $freeshipremotedistrct, goodsid: $goodsid, goodssign: $goodssign, id: $id, mainpic: $mainpic, marketingmainpic: $marketingmainpic, monthsales: $monthsales, originprice: $originprice, specialtext: $specialtext, title: $title, video: $video)';
  }
}

/// @nodoc
abstract mixin class _$BrandGoodslistCopyWith<$Res>
    implements $BrandGoodslistCopyWith<$Res> {
  factory _$BrandGoodslistCopyWith(
          _BrandGoodslist value, $Res Function(_BrandGoodslist) _then) =
      __$BrandGoodslistCopyWithImpl;
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
class __$BrandGoodslistCopyWithImpl<$Res>
    implements _$BrandGoodslistCopyWith<$Res> {
  __$BrandGoodslistCopyWithImpl(this._self, this._then);

  final _BrandGoodslist _self;
  final $Res Function(_BrandGoodslist) _then;

  /// Create a copy of BrandGoodslist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_BrandGoodslist(
      activitytype: null == activitytype
          ? _self.activitytype
          : activitytype // ignore: cast_nullable_to_non_nullable
              as num,
      actualprice: null == actualprice
          ? _self.actualprice
          : actualprice // ignore: cast_nullable_to_non_nullable
              as num,
      brandid: null == brandid
          ? _self.brandid
          : brandid // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as num,
      commissionrate: null == commissionrate
          ? _self.commissionrate
          : commissionrate // ignore: cast_nullable_to_non_nullable
              as num,
      commissiontype: null == commissiontype
          ? _self.commissiontype
          : commissiontype // ignore: cast_nullable_to_non_nullable
              as num,
      couponconditions: null == couponconditions
          ? _self.couponconditions
          : couponconditions // ignore: cast_nullable_to_non_nullable
              as String,
      couponendtime: null == couponendtime
          ? _self.couponendtime
          : couponendtime // ignore: cast_nullable_to_non_nullable
              as String,
      couponid: null == couponid
          ? _self.couponid
          : couponid // ignore: cast_nullable_to_non_nullable
              as String,
      couponlink: null == couponlink
          ? _self.couponlink
          : couponlink // ignore: cast_nullable_to_non_nullable
              as String,
      couponprice: null == couponprice
          ? _self.couponprice
          : couponprice // ignore: cast_nullable_to_non_nullable
              as num,
      couponreceivenum: null == couponreceivenum
          ? _self.couponreceivenum
          : couponreceivenum // ignore: cast_nullable_to_non_nullable
              as num,
      couponstarttime: null == couponstarttime
          ? _self.couponstarttime
          : couponstarttime // ignore: cast_nullable_to_non_nullable
              as String,
      coupontotalnum: null == coupontotalnum
          ? _self.coupontotalnum
          : coupontotalnum // ignore: cast_nullable_to_non_nullable
              as num,
      dtitle: null == dtitle
          ? _self.dtitle
          : dtitle // ignore: cast_nullable_to_non_nullable
              as String,
      dailysales: null == dailysales
          ? _self.dailysales
          : dailysales // ignore: cast_nullable_to_non_nullable
              as num,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      flagshipstore: null == flagshipstore
          ? _self.flagshipstore
          : flagshipstore // ignore: cast_nullable_to_non_nullable
              as num,
      freeshipremotedistrct: null == freeshipremotedistrct
          ? _self.freeshipremotedistrct
          : freeshipremotedistrct // ignore: cast_nullable_to_non_nullable
              as num,
      goodsid: null == goodsid
          ? _self.goodsid
          : goodsid // ignore: cast_nullable_to_non_nullable
              as String,
      goodssign: null == goodssign
          ? _self.goodssign
          : goodssign // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      mainpic: null == mainpic
          ? _self.mainpic
          : mainpic // ignore: cast_nullable_to_non_nullable
              as String,
      marketingmainpic: null == marketingmainpic
          ? _self.marketingmainpic
          : marketingmainpic // ignore: cast_nullable_to_non_nullable
              as String,
      monthsales: null == monthsales
          ? _self.monthsales
          : monthsales // ignore: cast_nullable_to_non_nullable
              as num,
      originprice: null == originprice
          ? _self.originprice
          : originprice // ignore: cast_nullable_to_non_nullable
              as num,
      specialtext: null == specialtext
          ? _self._specialtext
          : specialtext // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$BrandListResult {
  IList<BrandItem> get lists;
  int get pagesize;
  int get currentpage;
  int get totalcount;

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BrandListResultCopyWith<BrandListResult> get copyWith =>
      _$BrandListResultCopyWithImpl<BrandListResult>(
          this as BrandListResult, _$identity);

  /// Serializes this BrandListResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BrandListResult &&
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

  @override
  String toString() {
    return 'BrandListResult(lists: $lists, pagesize: $pagesize, currentpage: $currentpage, totalcount: $totalcount)';
  }
}

/// @nodoc
abstract mixin class $BrandListResultCopyWith<$Res> {
  factory $BrandListResultCopyWith(
          BrandListResult value, $Res Function(BrandListResult) _then) =
      _$BrandListResultCopyWithImpl;
  @useResult
  $Res call(
      {IList<BrandItem> lists, int pagesize, int currentpage, int totalcount});
}

/// @nodoc
class _$BrandListResultCopyWithImpl<$Res>
    implements $BrandListResultCopyWith<$Res> {
  _$BrandListResultCopyWithImpl(this._self, this._then);

  final BrandListResult _self;
  final $Res Function(BrandListResult) _then;

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
    return _then(_self.copyWith(
      lists: null == lists
          ? _self.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as IList<BrandItem>,
      pagesize: null == pagesize
          ? _self.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
      currentpage: null == currentpage
          ? _self.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int,
      totalcount: null == totalcount
          ? _self.totalcount
          : totalcount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BrandListResult extends BrandListResult {
  const _BrandListResult(
      {this.lists = const IListConst([]),
      this.pagesize = 0,
      this.currentpage = 0,
      this.totalcount = 0})
      : super._();
  factory _BrandListResult.fromJson(Map<String, dynamic> json) =>
      _$BrandListResultFromJson(json);

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

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BrandListResultCopyWith<_BrandListResult> get copyWith =>
      __$BrandListResultCopyWithImpl<_BrandListResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BrandListResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandListResult &&
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

  @override
  String toString() {
    return 'BrandListResult(lists: $lists, pagesize: $pagesize, currentpage: $currentpage, totalcount: $totalcount)';
  }
}

/// @nodoc
abstract mixin class _$BrandListResultCopyWith<$Res>
    implements $BrandListResultCopyWith<$Res> {
  factory _$BrandListResultCopyWith(
          _BrandListResult value, $Res Function(_BrandListResult) _then) =
      __$BrandListResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {IList<BrandItem> lists, int pagesize, int currentpage, int totalcount});
}

/// @nodoc
class __$BrandListResultCopyWithImpl<$Res>
    implements _$BrandListResultCopyWith<$Res> {
  __$BrandListResultCopyWithImpl(this._self, this._then);

  final _BrandListResult _self;
  final $Res Function(_BrandListResult) _then;

  /// Create a copy of BrandListResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lists = null,
    Object? pagesize = null,
    Object? currentpage = null,
    Object? totalcount = null,
  }) {
    return _then(_BrandListResult(
      lists: null == lists
          ? _self.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as IList<BrandItem>,
      pagesize: null == pagesize
          ? _self.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
      currentpage: null == currentpage
          ? _self.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int,
      totalcount: null == totalcount
          ? _self.totalcount
          : totalcount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
