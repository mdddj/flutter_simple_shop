import 'package:flutter/material.dart';


///导航
class CategoryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("产品列表"),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight+42);
}