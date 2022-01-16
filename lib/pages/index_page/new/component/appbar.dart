// Flutter imports:
// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// Project imports:
import '../../../../common/utils.dart';
import '../../../../provider/riverpod/category_riverpod.dart';
import '../../../../widgets/appbar_search.dart';
import '../../../new_goods_list/view.dart';
import '../../../search/view.dart';
import '../index_riverpod.dart';

/// 首页导航栏
class IndexHomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const IndexHomeAppbar({Key? key}) : super(key: key);

  void navTo(BuildContext context) {
    context.navigator.push(SwipeablePageRoute(
        builder: (_) => const SearchPage(
              initSearchKeyWord: '',
            )));
  }

  @override
  Widget build(BuildContext context) {
    return SAppBarSearch(
      hintText: '输入关键字,例如:"辣条"',
      onTap: () => navTo(context),
      readOnly: true,
      eve: 0,
      leadingWidth: 58,
      leading: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/svg/diandian.svg',
          width: 34,
          height: 34,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: Colors.black,
            ))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Consumer<IndexState>(
          builder: (BuildContext context,value, Widget? child) {
            final loading = value.indexLoading;
            final categoryWidgets = utils.widgetUtils.categoryTabs(context);
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      height: 46,
                      child: DefaultTabController(
                        length: 1 + categoryWidgets.length,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            isScrollable: true,
                            tabs: [
                              const Tab(
                                text: '精选',
                              ),
                              ...categoryWidgets
                            ],
                            labelColor: Colors.black,
                            indicatorColor: Colors.transparent,
                            unselectedLabelColor: Colors.grey,
                            onTap: (int index) {
                              if (index == 0) {
                                return;
                              }
                              final category = context.read<CategoryState>().getCategoryByIndex(index - 1);
                              utils.widgetUtils.to(NewGoodsList(
                                category: category,
                                initIndex: context.read<CategoryState>().getIndexWithCategory(category),
                              ));
                            },
                          ),
                        ),
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: loading
                          ? const LinearProgressIndicator(
                              minHeight: 2.0,
                            )
                          : Container(
                              height: 2.0,
                            ),
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
      isSliveWidget: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
