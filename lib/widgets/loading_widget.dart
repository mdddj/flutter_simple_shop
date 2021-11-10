// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
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
