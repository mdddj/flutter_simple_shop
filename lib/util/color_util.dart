part of util;

class ColorUtil{

  /// 获取图片的主要颜色
  static Future<Color> getImageMainColor(String netImageUrl)async{
    var paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(MImageUtils.magesProcessor(netImageUrl)),
      maximumColorCount: 20,
    );
    return paletteGenerator.dominantColor!.color;
  }
}
