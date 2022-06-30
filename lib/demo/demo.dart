import 'package:flutter/material.dart';

//测试json
final testMap = {
  "code": 1,
  "success": true,
  "message": "成功",
  "type": 'component',
  "data": {
    "component": [
      {"id": 1, "type": "slider", "data": {}},
      {"id": 2, "type": "newlist", "data": {}},
    ]
  }
};

///基础模型,component里面对应的模型,实现这个基本模型
abstract class BaseModel<T> {
  T fromJson(Map<String, dynamic> map);
}

///渲染组件的基本实现,也就是[data]里面的[component] 构建widget的基本接口
abstract class HomeComponetRender<T extends BaseModel> {
  final Map<String, dynamic> data;

  HomeComponetRender(this.data);

  ///组件类型
  String getType();

  ///渲染widget
  Widget renderCardWidget();

  ///获取卡片所需的数据,如果widget里面需要数据,则直接用这个函数拿就行了
  T? getCardData();
}

//slider 对象模型
class SliverModal extends BaseModel<SliverModal> {
  @override
  SliverModal fromJson(Map<String, dynamic> map) {
    return SliverModal();
  }
}

//newlist数据模型,card widget里面所需要的数据
class NewListModal extends BaseModel<NewListModal> {
  @override
  NewListModal fromJson(Map<String, dynamic> map) {
    return NewListModal();
  }
}

///[slider] 组件的实现
class SliverComponet extends HomeComponetRender<SliverModal> {
  SliverComponet(Map<String, dynamic> data) : super(data);

  ///这里返回的是上面json中的type类型
  @override
  String getType() {
    return "slider";
  }

  @override
  Widget renderCardWidget() {
    ///如果需要获取数据,通过[getCardData]函数拿数据
    final cardModel = getCardData(); //组件所需要的参数
    return const Text("slider 组件");
  }

  @override
  SliverModal getCardData() {
    return SliverModal().fromJson(data);
  }
}


///[newlist] 组件的实现
class NewlistComponet extends HomeComponetRender<NewListModal> {
  NewlistComponet(Map<String, dynamic> data) : super(data);

  ///这里返回的是上面json中的type类型
  @override
  String getType() {
    return "newlist";
  }

  @override
  Widget renderCardWidget() {
    ///如果需要获取数据,通过[getCardData]函数拿数据
    final cardModel = getCardData(); //组件所需要的参数
    return const Text("newlist 组件");
  }

  @override
  NewListModal getCardData() {
    return NewListModal().fromJson(data);
  }
}

///未知类型的,没有实现的卡片
class EmptyCard extends HomeComponetRender {
  EmptyCard() : super({});

  @override
  BaseModel? getCardData() {
    return null;
  }

  @override
  String getType() {
    return "";
  }

  @override
  Widget renderCardWidget() {
    return const Text("空空如也");
  }
}

///工厂类
class HomeCardFactory {


  static HomeComponetRender render(String type, Map<String, dynamic> data) {
    switch (type) {
      case "slider":
        return SliverComponet(data);
      case "newlist":
        return NewlistComponet(data);
      default:
        return EmptyCard();
    }
    return EmptyCard();
  }
}

//首页
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final data = components[index];
        return HomeCardFactory.render(data['type']!, data['data'])
            .renderCardWidget();
      },
      itemCount: components.length,
    );
  }

  List<dynamic> get components =>
      (testMap['data'] as Map<String, dynamic>)['component'] as List<dynamic>;
}
