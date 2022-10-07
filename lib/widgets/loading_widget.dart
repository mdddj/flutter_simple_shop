import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../util/extended_util.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height:bodyHeight(context),
      width: pw(context),
      child: const Center(
        child: CircularProgressIndicator(backgroundColor: Colors.red),
      ),
    );
  }
}


class MyCustomLoadingWidget extends StatelessWidget {
  final String msg;
  const MyCustomLoadingWidget(this.msg,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      alignment: Alignment.center,
      child: LoadingAnimationWidget.staggeredDotsWave(color: context.isDarkModel ? Colors.white : Colors.black, size: 30),
    );
  }
}