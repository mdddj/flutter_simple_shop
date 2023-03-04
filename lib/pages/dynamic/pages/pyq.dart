// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../components/list.dart';
import '../loading.dart';
import '../pyq_riverpod.dart';

/// 朋友圈
class PyqView extends ConsumerStatefulWidget {
  const PyqView({Key? key}) : super(key: key);

  @override
  PyqViewState createState() => PyqViewState();
}

class PyqViewState extends ConsumerState<PyqView> {


  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(pyqRiverpod).fetchData();
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
        await ref.read(pyqRiverpod).nextPage();
      },
      footer: MaterialFooter(),
    );
  }
}
