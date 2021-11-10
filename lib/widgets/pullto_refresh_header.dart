// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';

  Widget buildPulltoRefreshHeader(PullToRefreshScrollNotificationInfo? info) {
    //print(info?.mode);
    //print(info?.dragOffset);
    //    print('------------');
    var offset = info?.dragOffset ?? 0.0;
    var mode = info?.mode;
    //it should more than 18, so that RefreshProgressIndicator can be shown fully
    if (info?.refreshWidget != null &&
        offset > 18.0 &&
        mode != RefreshIndicatorMode.error) {
    }

    Widget child;
    if (mode == RefreshIndicatorMode.error) {
      child = GestureDetector(
          onTap: () {
            // refreshNotification;
            info?.pullToRefreshNotificationState.show();
          },
          child: Container(
            color: Colors.transparent,
            alignment: Alignment.bottomCenter,
            height: offset,
            width: double.infinity,
            //padding: EdgeInsets.only(top: offset),
            child: Container(
              padding: const EdgeInsets.only(left: 5.0),
              alignment: Alignment.center,
              child: const Text(
                '刷新失败,点击重试',
                style: TextStyle(fontSize: 12.0, inherit: false),
              ),
            ),
          ));
    } else {
      var modeStr = '下拉刷新';
      if (mode != null && mode == RefreshIndicatorMode.armed) {
        modeStr = '松手刷新';
      } else if (mode != null && mode == RefreshIndicatorMode.snap) {
        modeStr = '请求数据中';
      } else if (mode != null && mode == RefreshIndicatorMode.canceled) {
        modeStr = '操作取消';
      } else if (mode != null && mode == RefreshIndicatorMode.done) {
        modeStr = '刷新成功';
      } else if (mode != null && mode == RefreshIndicatorMode.refresh) {
        modeStr = '正在刷新';
      }
      child = Container(
        color: Colors.transparent,
        alignment: Alignment.bottomCenter,
        height: offset,
        width: double.infinity,
        //padding: EdgeInsets.only(top: offset),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/loading.gif'),
            Container(
              padding: const EdgeInsets.only(left: 5.0),
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text(
                modeStr,
                style: const TextStyle(
                    fontSize: 12,
                    inherit: false,
                    color: Colors.grey),
              ),
            )
          ],
        ),
      );
    }

    return SliverToBoxAdapter(
      child: child,
    );
  }

