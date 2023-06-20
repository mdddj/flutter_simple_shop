import 'package:dataoke_sdk/model/category.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

class CategoryListPage extends StatelessWidget {
  final Category category;
  const CategoryListPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.cname),
      ),
      body: CategoryGoodsList(category),
    );
  }
}
