// Flutter imports:
// Package imports:
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';

// Project imports:
import '../../../modals/order_list_model.dart';
import '../../../repository/order_respository.dart';
import '../../../widgets/loading_more_list_indicator.dart';
import '../../../widgets/pullto_refresh_header.dart';

class MyOrderHomePage extends StatefulWidget {

  final  String? stype; // 审核类型

  const MyOrderHomePage({this.stype,Key? key}):super(key: key);

  @override
  _MyOrderHomePageState createState() => _MyOrderHomePageState();
}

class _MyOrderHomePageState extends State<MyOrderHomePage> {

  OrderRespository orderRespository = OrderRespository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('全部订单'),
        centerTitle: true,
      ),
      body: PullToRefreshNotification(
          pullBackOnRefresh: false,
          maxDragOffset: 80.0,
          armedDragUpCancel: false,
          onRefresh: () async {
          await orderRespository.refresh(true);
          return true;
        },
          child: LoadingMoreCustomScrollView(
            slivers: <Widget>[

              const PullToRefreshContainer(buildPulltoRefreshHeader),

              LoadingMoreSliverList(
                  SliverListConfig<OrderAuditObject>(

                    itemBuilder: (c,item,index){
                      var createTimeStr = DateUtil.formatDateMs(int.parse(item.createTime!),format: 'yyyy-MM-dd HH:mm:ss');
                      var stateTip = '等待审核';
                      var stateTipColor = Colors.black;
                      var stateIcon = Icon(Icons.info_outline,color: stateTipColor,);
                      if(item.stype==1){
                        stateTip = '审核通过';
                        stateTipColor = Colors.green;
                      }else if(item.stype==2){
                        stateTip = '审核失效';
                        stateTipColor = Colors.deepOrange;
                      }
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal:12,vertical: 12),
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: const BoxDecoration(
                          color:Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('订单编号:${item.orderid}'),
                                Row(
                                  children: <Widget>[
                                    stateIcon,
                                    const SizedBox(width: 12,),
                                    Text(stateTip,style: TextStyle(color: stateTipColor),),
                                  ],
                                )
                              ],
                            ),
                            Text('提交时间:$createTimeStr'),
                          ],
                        ),
                      );
                    },
                    sourceList: orderRespository,
                    indicatorBuilder: (context, state) {
                      return LoadingMoreListCostumIndicator(state, isSliver: true);
                    },
                  ),
              )
            ],
          ), ),
    );
  }

}
