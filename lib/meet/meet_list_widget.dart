import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import 'list.dart';
import 'meet_item_layout.dart';
import 'meet_model.dart';

class MeetListWidget extends StatefulWidget {
  const MeetListWidget({Key? key}) : super(key: key);

  @override
  State<MeetListWidget> createState() => _MeetListWidgetState();
}

class _MeetListWidgetState extends State<MeetListWidget> {

  final repository = MeetListLoadMore();

  @override
  Widget build(BuildContext context) {
    return LoadingMoreCustomScrollView(
      slivers: [
        LoadingMoreSliverList(SliverListConfig<MeetModel>(
          itemBuilder:MeetItemLayout.new,
          sourceList: repository
        ))
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    repository.dispose();
  }
}
