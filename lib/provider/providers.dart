// Package imports:
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

import './ddq_provider.dart';
import './dtk_index_goods_provider.dart';
import './goods_detail_provider.dart';
import './goods_list_provider.dart';
import './nine_goods_provider.dart';
import '../pages/banjia/resp.dart';
// Project imports:
import '../pages/brand_page/provider/brand_provider.dart';
import '../pages/dynamic/pyq_riverpod.dart';
import '../pages/dynamic/wph_riverpod.dart';
import '../pages/index_page/new/index_riverpod.dart';
import '../pages/jiujiu_page/riverpod.dart';
import '../pages/new_goods_list/riverpod.dart';
import '../pages/panic_buying/repository.dart';
import '../pages/zhe/riverpod.dart';
import 'index_provider.dart';
import 'jd_products_provider.dart';
import 'riverpod/category_riverpod.dart';
import 'riverpod/search_riverpod.dart';
import 'riverpod/user_riverpod.dart';
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
  ChangeNotifierProvider(create: (_)=>CategoryState()),
  ChangeNotifierProvider(create: (_)=>IndexState()),
  ChangeNotifierProvider(create: (_)=>JdProductsProviderState()),
  ChangeNotifierProvider(create: (_)=>SearchState()),
  ChangeNotifierProvider(create: (_)=>UserModel()),
  ChangeNotifierProvider(create: (_)=>BanjiaResp()),
  ChangeNotifierProvider(create: (_)=>WphState()),
  ChangeNotifierProvider(create: (_)=>PyqState()),
  ChangeNotifierProvider(create: (_)=>JiujiuState()),
  ChangeNotifierProvider(create: (_)=>GoodsListState()),
  ChangeNotifierProvider(create: (_)=>PanicBuyingModel()),
  ChangeNotifierProvider(create: (_)=>ZheState())
];
