import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RiverpodErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback retry;

  const RiverpodErrorWidget({super.key, required this.message, required this.retry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
            text: TextSpan(
                text: message, children: [TextSpan(text: " 重试", style: const TextStyle(color: Colors.blue), recognizer: TapGestureRecognizer()..onTap = retry)], style: context.textTheme.bodyMedium)),
      ),
    );
  }
}
