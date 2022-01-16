// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../components/list.dart';
import '../loading.dart';
import '../pyq_riverpod.dart';

/// 朋友圈
class PyqView extends StatefulWidget {
  const PyqView({Key? key}) : super(key: key);

  @override
  _PyqViewState createState() => _PyqViewState();
}

class _PyqViewState extends State<PyqView> {


  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<PyqState>().fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.custom(
      slivers: const [
        PyQLoading(),
        PyqList()
      ],
      onLoad: ()async{
        await context.read<PyqState>().nextPage();
      },
      footer: MaterialFooter(),
    );
  }
}
