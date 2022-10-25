// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/category.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class SubCategoryView extends StatelessWidget {
  final ValueChanged<Subcategory>? changeSubcategory;
  final Category category;
  final Subcategory? subcategory;

  const SubCategoryView(this.category,
      {this.changeSubcategory, this.subcategory, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showSubcategorys = category.subcategories;
    return Container(
      child: _renderSubCategoryList(showSubcategorys),
    );
  }

  /// 一行滑动版本
  Widget _renderSubCategoryList(List<Subcategory> showSubcategorys){
    return SizedBox(
      height: 30,
      child: ListView.builder(itemBuilder: (_,index){
        return _rederItem(showSubcategorys[index]);
      },itemCount: showSubcategorys.length,scrollDirection: Axis.horizontal,),
    );
  }

  /// 一行滑动版本的子项布局
  Widget _rederItem(Subcategory item){
    return GestureDetector(
      onTap: (){
        if (subcategory == null) {
          changeSubcategory?.call(item);
          return;
        }
        if (subcategory != null && subcategory!.subcid != item.subcid) {
          changeSubcategory?.call(item);
        }
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: subcategory != null &&
              subcategory!.subcid == item.subcid ? Colors.pink.shade50 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Text(item.subcname,style: TextStyle(
          color:  subcategory != null &&
              subcategory!.subcid == item.subcid ? Colors.pink : null
        ),),
      ),
    );
  }

  /// 网格版本 (占位太多,不推荐使用)
  GridView buildGridView(List<Subcategory> showSubcategorys) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: showSubcategorys.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return buildSubCategoryItem(showSubcategorys[index]);
      },
    );
  }

  // 子分类布局
  Widget buildSubCategoryItem(Subcategory item) {
    return InkWell(
      onTap: () {
        if (subcategory == null) {
          changeSubcategory?.call(item);
          return;
        }
        if (subcategory != null && subcategory!.subcid != item.subcid) {
          changeSubcategory?.call(item);
        }
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExtendedImage.network(
                  item.scpic,
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxWidth * 0.5,
                  fit: BoxFit.fill,
                  cache: true,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                ),
                Text(
                  item.subcname,
                  style: TextStyle(
                      color: subcategory != null &&
                              subcategory!.subcid == item.subcid
                          ? Colors.pinkAccent
                          : Colors.black),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
