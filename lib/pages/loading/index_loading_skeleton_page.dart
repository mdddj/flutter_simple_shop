// Flutter imports:
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

///首页的加载骨架屏
///

class IndexLoadingSkeletonPage extends StatelessWidget {
  const IndexLoadingSkeletonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Skeleton(),
        actions: const <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: 5.0, right: 12, top: 8.0, bottom: 8.0),
            child: Skeleton(),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTabItemSkeleton(context),
                      _buildTabItemSkeleton(context),
                      _buildTabItemSkeleton(context),
                      _buildTabItemSkeleton(context),
                      _buildTabItemSkeleton(context),
                      _buildTabItemSkeleton(context),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Skeleton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabItemSkeleton(BuildContext context) {
    var pw = MediaQuery.of(context).size.width;
    pw = pw - 30;
    return const Skeleton();
  }
}
