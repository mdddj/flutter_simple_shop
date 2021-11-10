// Package imports:
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

import './ddq_provider.dart';
import './dtk_index_goods_provider.dart';
import './goods_detail_provider.dart';
import './goods_list_provider.dart';
import './nine_goods_provider.dart';
// Project imports:
import '../pages/brand_page/provider/brand_provider.dart';
import 'index_provider.dart';
import 'user_provider.dart';

// Providers---end

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<DtkIndexGoodsModal>(
      create: (_) => DtkIndexGoodsModal()),
  ChangeNotifierProvider<GoodsDetailProvider>(
      create: (_) => GoodsDetailProvider()),
  ChangeNotifierProvider<NineGoodsProvider>(create: (_) => NineGoodsProvider()),
  ChangeNotifierProvider<GoodsListProvider>(create: (_) => GoodsListProvider()),
  ChangeNotifierProvider<DdqProvider>(create: (_)=>DdqProvider()),
  ChangeNotifierProvider<UserProvider>(create: (_)=>UserProvider()),
  ChangeNotifierProvider<IndexProvider>(create: (_)=>IndexProvider()),
  ChangeNotifierProvider<BrandProvider>(create: (_)=>BrandProvider()),
];
