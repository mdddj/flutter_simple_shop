library newapi;

import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dataoke_sdk/model/detail_base_data.dart';
import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_models/models/product.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../freezed/zhe_carousel_model.dart';
import '../../freezed/zhe_product.dart';
import '../../index.dart';
import '../../provider/riverpod/model/my_user.dart';
import '../apis.dart';

part 'base_api.dart';
part 'carousel.dart';
part 'category_api.dart';
part 'full_api.dart';
part 'get_user_by_token.dart';
part 'hot_search_api.dart';
part 'product_detail_info.dart';
part 'products_api.dart';
part 'search_key_word_api.dart';
part 'super_search_api.dart';
part 'topic_products.dart';
part 'zhe_app_key_api.dart';
