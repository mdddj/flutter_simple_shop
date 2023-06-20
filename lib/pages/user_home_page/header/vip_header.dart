import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/apis.dart';
import '../../../common/api_ext.dart';
import '../../../index.dart';
import '../../../provider/riverpod/model/my_user.dart';
import '../../index.dart';

//开通会员标识
class VipHeader extends ConsumerWidget {
  const VipHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vip = ref.user?.vip ?? Vip.none;

    return Container(
      decoration: BoxDecoration(
          color: Colors.orange.shade200,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 60,
            child: Center(
              child: Image.asset(
                'assets/images/vip.png',
                width: 38,
                height: 38,
              ),
            ),
          ),
           Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                '会员可享有多项特权',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(_isVip(vip) ? '您已经是 VIP 会员' : '未开通特权', style: const TextStyle(color: Colors.black))
            ]),
          ),
          Center(
            child: SizedBox(
              width: 100,
              height: 38,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)))),
                onPressed:_isVip(vip)? null : ()=>_openVip(ref),
                child:  Text(
                  _buttonText(vip),
                  style: const TextStyle(color: Colors.yellow),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }




  //开通会员
  void _openVip(WidgetRef ref) {
    MyOpenVipApi().request(const R()).then((value) {
      value.simpleToast(ifOk: (){
        ref.read(userRiverpod.notifier).openVip();
      });
    });
  }

  String _buttonText(Vip vip) {
     switch(vip){
      case Vip.none: {
        return "开通会员";
      }
      case Vip.vip: {
        return "已开通";
      }
      case Vip.superVip: {
        return "已开通";
      }
      case Vip.specialVip:{
        return "已开通";
      }
    }
  }


  bool _isVip(Vip vip) {
    switch(vip){
      case Vip.none:{
        return false;
      }
      default:{
        return true;
      }
    }
  }
}
