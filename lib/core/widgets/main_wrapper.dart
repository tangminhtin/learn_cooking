import 'package:flutter/material.dart';
import 'package:learn_cooking/features/category/presentation/pages/categories_page.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const CategoriesPage(),
    ];
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
      ),
    );
  }
}
