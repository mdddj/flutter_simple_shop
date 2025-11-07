library;

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:after_layout/after_layout.dart';
import 'package:animate_do/animate_do.dart';
import 'package:async/async.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:common_utils/common_utils.dart';
import 'package:dd_js_util/dd_js_util.dart' hide asT;
import 'package:dd_js_util/model/models.dart';
import 'package:dio/dio.dart' as dio;
import 'package:extended_image/extended_image.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart' hide View;
import 'package:flutter/foundation.dart' hide Category, describeIdentity;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import 'package:loading_more_list_library_fast/model/status.dart';
import 'package:logger/logger.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_ui_theme/model/theme.dart';
import 'package:simple_ui_theme/simple_ui_theme.dart';

import '../api/apis.dart';
import '../api/model/email_register_params.dart';
import '../api/model/get_email_valid_code.dart';
import '../api/model/login_params.dart';
import '../api/new/part.dart';
import '../assets.dart';
import '../common/api_ext.dart';
import '../common/view.dart';
import '../freezed/add_favorites_params.dart';
import '../freezed/anking_list_param.dart';
import '../freezed/appbar_menu.dart';
import '../freezed/file_info.dart';
import '../freezed/pager.dart';
import '../freezed/product_share.dart';
import '../freezed/resource_category.dart';
import '../freezed/user_order_info.dart';
import '../freezed/xb_result.dart';
import '../freezed/zhe_carousel_model.dart';
import '../freezed/zhe_elm_model.dart';
import '../freezed/zhe_product.dart';
import '../index.dart';
import '../modals/dataoke/brand_detail_result.dart';
import '../modals/dataoke/category.dart';
import '../modals/dataoke/detail_base_data.dart';
import '../modals/dataoke/hot_search_worlds_result.dart';
import '../modals/dd/brand.dart';
import '../modals/dd/product.dart';
import '../modals/dd_sort.dart';
import '../provider/riverpod/model/my_user.dart';
import '../r_gen_file.dart';
import '../util/number_cover.dart';
import '../widgets/favorite_add_btn.dart';
import '../widgets/image_wrapper.dart';
import '../widgets/loading/custom_loading_more_widget.dart';
import '../widgets/login_tip_widget.dart';
import '../widgets/logo.dart';
import '../widgets/pullto_refresh_header.dart';
import '../widgets/riverpod_error.dart';
import 'brand_page/models/brand_detail_model.dart';
import 'detail_page/action_buttons.dart';
import 'detail_page/detail_imgs_widget.dart';
import 'detail_page/swiper_widget.dart';
import 'dynamic/model/wph_detail_resul.dart';
import 'index_page/new/component/gridmenu/view.dart';
import 'new_goods_list/v2/goods_list_params_model.dart';
import 'new_goods_list/v2/page.dart';
import 'new_goods_list/v2/repository.dart';
import 'panic_buying/repository_v2.dart';
import 'user_home_page/header/vip_header.dart';
import 'user_home_page/pages/resource_list.dart';

part 'best_seller_list.dart';

part 'blog/write_blog/components/blog_categorys.dart';

part 'blog/write_blog/view.dart';

part 'brand_page/brand_detail.dart';

part 'brand_page/category_delegate.dart';

part 'brand_page/components/detail_brand_info.dart';

part 'brand_page/components/detail_product_list.dart';

part 'brand_page/components/item.dart';

part 'brand_page/index.dart';

part 'brand_page/new/list.dart';

part 'brand_page/provider/brand_provider.dart';

part 'category_page/index_home.dart';

part 'category_page/left_widget.dart';

part 'category_page/right_widget.dart';

part 'config/desktop.dart';

part 'config/mobile.dart';

part 'ddq_page/goods_item.dart';

part 'ddq_page/index_home.dart';

part 'ddq_page/sliver_app_bar_delegate.dart';

part 'detail_page/hdk/index_home.dart';

part 'detail_page/index_home.dart';

part 'favorite_page/actions.dart';

part 'favorite_page/goods_item.dart';

part 'favorite_page/index_home.dart';

part 'index_page/component/category_component.dart';

part 'index_page/component/category_item_layout.dart';

part 'index_page/component/category_notification_stream.dart';

part 'index_page/component/component_title.dart';

part 'index_page/component/home_banner.dart';

part 'index_page/component/topic_carousel.dart';

part 'index_page/component/zhe_carousel_products.dart';

part 'index_page/desktop/components/appbar.dart';

part 'index_page/desktop/components/title.dart';

part 'index_page/desktop/index.dart';

part 'index_page/grid_menu.dart';

part 'index_page/grid_menu_list.dart';

part 'index_page/model/index_carousel_item_model.dart';

part 'index_page/model/index_grid_menu_item_model.dart';

part 'index_page/model/topic_model.dart';

part 'index_page/new/component/appbar.dart';

part 'index_page/new/component/carousel.dart';

part 'index_page/new/component/gridmenu/menu_item.dart';

part 'index_page/new/component/gridmenu/model.dart';

part 'index_page/new/component/index_tabbar.dart';

part 'index_page/new/component/products.dart';

part 'index_page/new/component/two_column_comm.dart';

part 'index_page/new/github/github.dart';

part 'index_page/new/index.dart';

part 'index_page/new/index_riverpod.dart';

part 'index_page/new/waimai/detail.dart';

part 'index_page/new/waimai/index.dart';

part 'index_page/public_widget_style.dart';

part 'index_page/store/component_index.dart';

part 'index_page/store/goods_card.dart';

part 'index_page/store/goods_item_layout.dart';

part 'index_page/store/price_layout.dart';

part 'index_page/store/store_card.dart';

part 'jiujiu_page/goods_item_widget.dart';

part 'jiujiu_page/goods_list_widget.dart';

part 'jiujiu_page/image_nav.dart';

part 'new_goods_list/components/sort_widget.dart';

part 'new_goods_list/components/subcategory_view.dart';

part 'new_goods_list/riverpod.dart';

part 'new_goods_list/v2/index.dart';

part 'order/model.dart';

part 'order/user_order_index.dart';

part 'panic_buying/components/appbar.dart';

part 'panic_buying/components/categorys.dart';

part 'panic_buying/components/daojishi.dart';

part 'panic_buying/components/list.dart';

part 'panic_buying/components/view_status.dart';

part 'panic_buying/repository.dart';

part 'panic_buying/view.dart';

part 'report/repost_index.dart';

part 'search/component/helper_show.dart';

part 'search/component/key_worlds.dart';

part 'search/component/suggest.dart';

part 'search/list.dart';

part 'search/view.dart';

part 'user_home_page/ext.dart';

part 'user_home_page/header/appbar.dart';

part 'user_home_page/header/index.dart';

part 'user_home_page/header/money_count.dart';

part 'user_home_page/index_home.dart';

part 'user_home_page/login/login_page.dart';

part 'user_home_page/login/register_page.dart';

part 'user_home_page/new/my_sliver_appbar.dart';

part 'user_home_page/new/user_center_page.dart';

part 'user_home_page/order/my_order.dart';

part 'user_home_page/order/order_add.dart';

part 'user_home_page/order/order_widget.dart';

part 'user_home_page/pages/new_version_page.dart';

part 'user_home_page/setting/index.dart';

part 'user_home_page/setting/mini_theme_setting.dart';

part 'user_home_page/setting/update_avatar.dart';

part 'user_home_page/setting/update_city.dart';

part 'user_home_page/setting/update_job.dart';

part 'user_home_page/setting/update_name.dart';

part 'user_home_page/setting/update_string_attr.dart';

part 'user_home_page/white/components/code_input.dart';

part 'user_home_page/white/components/more_action_bottomsheet.dart';

part 'user_home_page/white/components/search_goods.dart';

part 'user_home_page/white/views/markdown_preview.dart';

part 'user_home_page/widgets/list_item.dart';

part 'user_home_page/widgets/svg_title.dart';

part 'xb/xianbao_index.dart';
