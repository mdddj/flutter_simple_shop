import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 京东的分类
class JDCategory extends StatelessWidget {
  const JDCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: const [
            JDCategoryItem(
                id: 'id', name: '日用', svgName: 'assets/svg/cate/riyongpin.svg',color: Colors.blue,),
            JDCategoryItem(
                id: 'id', name: '家电', svgName: 'assets/svg/cate/小家电.svg',color: Colors.red,),
            JDCategoryItem(
                id: 'id', name: '生鲜', svgName: 'assets/svg/cate/生鲜-水果3.svg',color: Colors.greenAccent,),
            JDCategoryItem(
                id: 'id', name: '数码', svgName: 'assets/svg/cate/数码电器.svg',color: Colors.purple,),
            JDCategoryItem(
              id: 'id', name: '零食', svgName: 'assets/svg/cate/零食.svg',color: Colors.orangeAccent,),
            JDCategoryItem(
              id: 'id', name: '厨具', svgName: 'assets/svg/cate/厨具.svg',color: Colors.orange,),
            JDCategoryItem(
              id: 'id', name: '服饰', svgName: 'assets/svg/cate/服饰类.svg',color: Colors.cyan,),
            JDCategoryItem(
              id: 'id', name: '宠物', svgName: 'assets/svg/cate/宠物.svg',color: Colors.pinkAccent,),
            JDCategoryItem(
              id: 'id', name: '美妆', svgName: 'assets/svg/cate/美妆.svg',color: Colors.red,),
            JDCategoryItem(
              id: 'id', name: '母婴', svgName: 'assets/svg/cate/母婴食品.svg',color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}

/// 京东的分类
class JDCategoryItem extends StatelessWidget {
  final String id; // 用来获取数据的id
  final String name; // 分类名字
  final String svgName; // svg图标路径
  final Color color; // 背景颜色
  const JDCategoryItem(
      {Key? key, required this.id, required this.name, required this.svgName,this.color=Colors.greenAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        color.withOpacity(.28),
                        color.withOpacity(.77),
                        color.withOpacity(.37),
                      ],
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter),
                  borderRadius: BorderRadius.circular(1000)),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                svgName,
                width: 40,
                height: 40,
              )),
          Text(name)
        ],
      ),
    );
  }
}
