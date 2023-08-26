import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../pages/index.dart';
import '../widgets/loading/custom_loading_more_widget.dart';
import '../widgets/login_tip_widget.dart';
import 'list.dart';
import 'meet_item_layout.dart';
import 'meet_model.dart';

class MeetListWidget extends ConsumerStatefulWidget {
  const MeetListWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<MeetListWidget> createState() => _MeetListWidgetState();
}

class _MeetListWidgetState extends ConsumerState<MeetListWidget> {
  final repository = MeetListLoadMore();

  @override
  Widget build(BuildContext context) {
    if (ref.isLogin.not) {
      return const LoginTipWidget();
    }
    return LoadingMoreCustomScrollView(
      slivers: [
        LoadingMoreSliverList(SliverListConfig<MeetModel>(
            itemBuilder: MeetItemLayout.new,
            sourceList: repository,
            indicatorBuilder: (context, status) {
              return CustomLoadingMoreWidgetWithSliver(context, status,
                  retry: () {
                repository.refresh(true);
              }, emptyChild: const SizedBox());
            },
            padding: const EdgeInsets.only(top: 12)))
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    repository.dispose();
  }
}
