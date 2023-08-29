import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    return const MyLoadingMoreCustomScrollView(
      slivers: [
        PyQLoading(),
        PyqList()
      ],
    );
  }
}
