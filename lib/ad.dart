// Flutter imports:
// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// Project imports:
import 'app.dart';
import 'pages/index_page/new/index_riverpod.dart';
import 'provider/riverpod/category_riverpod.dart';

class AdPage extends StatefulWidget {
  const AdPage({Key? key}) : super(key: key);

  @override
  _AdPageState createState() => _AdPageState();
}

class _AdPageState extends State<AdPage> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ShowUpAnimation(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  '欢迎来到典典的小卖部',
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink
                  ),
                ),
              ],
              totalRepeatCount: 10,
              pause: const Duration(milliseconds: 500),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    await context.read<CategoryState>().init();
    await context.read<CategoryState>().getJdCategory();
    await context.read<IndexState>().fetch();
    await context.navigator.pushReplacement(SwipeablePageRoute(builder: (_) => const App()));
  }
}

