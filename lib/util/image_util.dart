
class MImageUtils{

//  处理淘宝图片不带https头部问题
  static String magesProcessor(String url){
    return url.contains('https:') || url.contains('http:')?url:'https:$url';
  }

}