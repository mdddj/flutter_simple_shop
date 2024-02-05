library provider;

import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart' hide CacheFactory;
import 'package:dd_models/models/brand.dart';
import 'package:dd_models/models/carousel.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_library_fast/model/status.dart';

import '../api/apis.dart';
import '../api/model/login_params.dart';
import '../api/new/part.dart';
import '../freezed/login_result_model.dart';
import '../index.dart';
import '../pages/user_home_page/login/login_base.dart';
import 'riverpod/favorites/riverpod_model.dart';
import 'riverpod/model/my_user.dart';
import 'riverpod/model/user.dart';

export 'riverpod/favorites/model.dart';
export 'riverpod/index/index_products_model.dart';

part 'ddq_provider.dart';
part 'dtk_index_goods_provider.dart';
part 'goods_detail_provider.dart';
part 'goods_list_provider.dart';
part 'index_provider.dart';
part 'jd_products_provider.dart';
part 'riverpod/base.dart';
part 'riverpod/category_riverpod.dart';
part 'riverpod/favorites/repository/favorites_repository.dart';
part 'riverpod/favorites/riverpod.dart';
part 'riverpod/index/riverpod.dart';
part 'riverpod/search_riverpod.dart';
part 'riverpod/user_riverpod.dart';
part 'user_provider.dart';
