// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshWidgetFoot extends StatelessWidget {
  const PullToRefreshWidgetFoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (BuildContext context,LoadStatus? mode){
        Widget body ;
        if(mode==LoadStatus.idle){
          body =  Image.asset('assets/images/loading.gif');
        }
        else if(mode==LoadStatus.loading){
          body =  Image.asset('assets/images/loading.gif');
        }
        else if(mode == LoadStatus.failed){
          body = const Text('加载失败！点击重试！');
        }
        else if(mode == LoadStatus.canLoading){
          body = const Text('松手,加载更多!');
        }
        else{
          body = const Text('没有更多数据了!');
        }
        return SizedBox(
          height: 55.0,
          child: Center(child:body),
        );
      },
    );
  }
}
