import 'package:flutter/material.dart';

import '../../../modals/dataoke/category.dart';
import '../../index.dart';

class CategoryListPage extends StatelessWidget {
  final Category category;

  const CategoryListPage({super.key, required this.category});

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
