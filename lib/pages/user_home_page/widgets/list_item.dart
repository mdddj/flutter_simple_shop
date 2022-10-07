import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final String title;
  final Widget? actions;
  final Function onTap;
  final Widget? leftAction;
  final bool isCard;

  const ListItem({required this.title,this.actions,required this.onTap,this.leftAction,this.isCard =false,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap as void Function()?,
      child: Container(
        height: 111,
        width: context.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal:12),
        margin: isCard ? const EdgeInsets.symmetric(horizontal: 12):EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 0.5,color: Colors.black12))
        ),
        child: Row(
          children: <Widget>[

            // 头部
            leftAction != null ? Container(
              child: leftAction,
            ): Container(),


            // 标题
            Expanded(child: Text(title)),

            // 右侧显示
            Container(
              child: actions??const Icon(Icons.chevron_right,color: Colors.black12),
            )

          ],
        ),
      ),
    );
  }
}
