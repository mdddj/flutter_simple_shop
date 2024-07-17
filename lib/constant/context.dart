part of 'index.dart';

extension ContextEx on BuildContext {
  ///每行显示多少个产品
  int get waterfallFlowCrossAxisCount {
    var crossAxisCount = 2;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.tablet:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.mobile:
        crossAxisCount = 2;
        break;
      default:
        break;
    }
    return crossAxisCount;
  }

  ///一行显示多少个动态
  int get waterfallFlowCrossAxisCountResource {
    var crossAxisCount = 2;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        crossAxisCount = 4;
        break;
      case DeviceScreenType.tablet:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.mobile:
        crossAxisCount = 2;
        break;
      default:
        break;
    }
    return crossAxisCount;
  }

  //一行显示多少个品牌
  int get waterfallFlowCrossAxisCountWithBrand {
    var crossAxisCount = 1;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.tablet:
        crossAxisCount = 2;
        break;
      case DeviceScreenType.mobile:
        crossAxisCount = 1;
        break;
      default:
        break;
    }
    return crossAxisCount;
  }

  //品牌产品一行显示多少个
  int get waterfallFlowCrossAxisCountWithBrandProduct {
    var crossAxisCount = 2;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.tablet:
        crossAxisCount = 3;
        break;
      case DeviceScreenType.mobile:
        crossAxisCount = 3;
        break;
      default:
        break;
    }
    return crossAxisCount;
  }

  /// tab是否为滚动样式
  bool get tabIsScrollable {
    var result = false;
    switch (deviceScreenType) {
      case DeviceScreenType.desktop:
        result = true;
        break;
      case DeviceScreenType.tablet:
        result = true;
        break;
      case DeviceScreenType.mobile:
        result = false;
        break;
      default:
        break;
    }
    return result;
  }

  DeviceScreenType get deviceScreenType =>
      getDeviceType(MediaQuery.of(this).size);
}
