// Dart imports:
import 'dart:convert';
import 'dart:math';

// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:extended_text_field/extended_text_field.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../common/utils.dart';
// Project imports:
import '../../../util/input_utils.dart';
import 'components/code_input.dart';
import 'components/more_action_bottomsheet.dart';
import 'components/search_goods.dart';
import 'my_special_text_span_builder.dart';
import 'views/markdown_preview.dart';

// 发布页面
class WhiteIndex extends StatefulWidget {
  const WhiteIndex({Key? key}) : super(key: key);

  @override
  _WhiteIndexState createState() => _WhiteIndexState();
}

class _WhiteIndexState extends State<WhiteIndex> {
  final MySpecialTextSpanBuilder _mySpecialTextSpanBuilder = MySpecialTextSpanBuilder();
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey _key = GlobalKey();

  final FocusNode _focusNode = FocusNode();
  double _keyboardHeight = 267.0;

  bool get showCustomKeyBoard => activeEmojiGird || activeAtGrid || activeDollarGrid || activeImageGrid;
  bool activeEmojiGird = false;
  bool activeAtGrid = false;
  bool activeDollarGrid = false;
  bool activeImageGrid = false;
  bool showEmojiPanel = false;

  @override
  Widget build(BuildContext context) {
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    if (keyboardHeight > 0) {
      activeEmojiGird = activeAtGrid = activeDollarGrid = activeImageGrid = false;
    }

    _keyboardHeight = max(_keyboardHeight, keyboardHeight);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('发布动态', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: buildSvgPictureIcon('assets/svg/fabu.svg', 100),
          )
        ],
      ),
      body: SizedBox(
        height: Get.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ExtendedTextField(
                  key: _key,
                  autofocus: false,
                  expands: true,
                  cursorColor: Colors.pinkAccent,
                  controller: _textEditingController,
                  specialTextSpanBuilder: MySpecialTextSpanBuilder(showAtBackground: false, goodsCardOnTapCallBack: deleteOneGoodsCard, atTextOnTap: onAtTextTap),
                  focusNode: _focusNode,
                  maxLines: null,
                  style: const TextStyle(textBaseline: TextBaseline.alphabetic),
                  onTap: () {
                    if (showEmojiPanel == true) {
                      setState(() {
                        showEmojiPanel = false;
                      });
                    }
                  },
                  decoration: const InputDecoration(border: InputBorder.none),
                  //textDirection: TextDirection.rtl,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                buildActionIcons(),
                showEmojiPanel
                    ? SizedBox(
                        height: _keyboardHeight,
                        child: _emoJiList(),
                      )
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// @ 用户被点击
  void onAtTextTap(dynamic text) {
  }

  ///
  /// 底部工具栏
  Container buildActionIcons() {
    return Container(
      height: kToolbarHeight,
      width: Get.width,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildSvgPictureIcon('assets/svg/biaoqing.svg', 80, onTap: () {
            if (showEmojiPanel) {
              setState(() {
                showEmojiPanel = false;
              });
            } else {
              setState(() {
                showEmojiPanel = true;
              });
            }
          }),
          buildSvgPictureIcon('assets/svg/tupian.svg', 80, onTap: () async {
            final file = await utils.selectFile();
            if (file != null) {
              insertText("<img src='https://static.saintic.com/picbed/huang/2021/06/12/1623466301058.jpg' width='${Get.width}' height='${Get.width}'/>");
              insertText('如果您觉得这个开源项目不错,扫码支持一下哦~');
            }
          }),
          buildSvgPictureIcon('assets/svg/at.svg', 80),
          buildSvgPictureIcon('assets/svg/jinhao.svg', 80, onTap: () {
            utils.showMessage('功能设计中');
          }),
          buildSvgPictureIcon('assets/svg/shangpin.svg', 80, onTap: () async {
            await Get.to(() => const SearchProduct());
            insertText('<product=611071580085=productEnd/>');
            utils.showMessage('插入商品成功');
          }),
          buildSvgPictureIcon('assets/svg/gengduo.svg', 80, onTap: () {
            MoreActions.show([
              ListTile(
                title: const Text('预览正文内容'),
                onTap: () {
                  Get.back();
                  final data = _textEditingController.text;
                  Get.to(() => MarkDownPreview(data: data));
                },
                leading: const Icon(Icons.preview),
              ),
              ListTile(
                title: const Text('添加标题'),
                onTap: () {},
                leading: const Icon(Icons.title),
              ),
              ListTile(
                title: const Text('插入代码'),
                onTap: () async {
                  Get.back();
                  final result = await context.navigator.push<Map<String, String>>(SwipeablePageRoute(builder: (_) => const CodeInputPage()));
                  if (result != null) {
                    insertText('<code content="${result['code']}" language="${result['type']}" codeEnd/>');
                  }
                },
                leading: const Icon(Icons.code),
              ),
              ListTile(
                title: const Text('添加标签'),
                onTap: () {},
                leading: const Icon(Icons.tag),
              ),
            ]);
          }),
          buildSvgPictureIcon('assets/svg/jianpan.svg', 80, onTap: () {
            if (_focusNode.hasFocus) {
//              FocusScope.of(context).requestFocus(FocusNode());
              _focusNode.unfocus();
            } else {
              FocusScope.of(context).requestFocus(_focusNode);
            }
          }),
        ],
      ),
    );
  }

  Widget buildSvgPictureIcon(String path, double size, {dynamic onTap}) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        path,
        width: size,
        height: size,
      ),
    );
  }

  // emoji 面板
  Widget _emoJiList() {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('assets/json/emoji.json'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = json.decode(snapshot.data.toString());
            return Container(
              height: _keyboardHeight,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
              color: Colors.white,
              child: GridView.custom(
                padding: const EdgeInsets.all(3),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  mainAxisSpacing: 0.5,
                  crossAxisSpacing: 6.0,
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                      onTap: () {
                        insertText(String.fromCharCode(data[index]['unicode']));
                      },
                      child: Center(
                        child: Text(
                          String.fromCharCode(data[index]['unicode']),
                          style: const TextStyle(fontSize: 33),
                        ),
                      ),
                    );
                  },
                  childCount: data.length,
                ),
              ),
            );
          }
          return const Center(child: SizedBox(width: 40, height: 40, child: CircularProgressIndicator()));
        });
  }

  void insertText(String text) {
    InputUtils.insertText(text: text, controller: _textEditingController,state: this);
  }

  // 删除一个商品卡片
  void deleteOneGoodsCard(dynamic json) {
    // 当前输入框中的实际文本
    var actualText = _textEditingController.value.text;

    // 将要删除的字符串
    var wellDeleteStr = '[goodsId=${json.toString()}End]';

    // 替换
    var newValue = actualText.replaceAll(wellDeleteStr, '');

    // 设置
    _textEditingController.value = TextEditingValue(text: newValue);

    moveCursorToLast();
  }

  // 把光标位置移动到最后
  void moveCursorToLast() {
    _textEditingController.selection = TextSelection.fromPosition(TextPosition(offset: _textEditingController.value.text.length, affinity: TextAffinity.downstream));
    _focusNode.requestFocus();
  }

  // 移除光标
  void removeCursor() {
    _focusNode.unfocus();
  }

  void manualDelete() {
    //delete by code
    final _value = _textEditingController.value;
    final selection = _value.selection;
    if (!selection.isValid) return;

    TextEditingValue value;
    final actualText = _value.text;
    if (selection.isCollapsed && selection.start == 0) return;
    final start = selection.isCollapsed ? selection.start - 1 : selection.start;
    final end = selection.end;

    value = TextEditingValue(
      text: actualText.replaceRange(start, end, ''),
      selection: TextSelection.collapsed(offset: start),
    );

    final oldTextSpan = _mySpecialTextSpanBuilder.build(_value.text);

    value = handleSpecialTextSpanDelete(value, _value, oldTextSpan, null);

    _textEditingController.value = value;
  }
}
