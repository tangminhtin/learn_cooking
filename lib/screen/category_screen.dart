import 'package:flutter/material.dart';
import 'package:learn_cooking/data.dart';
import 'package:learn_cooking/widgets/bottom_navbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => Card(
          key: ValueKey(categories[index].id),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: double.infinity,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(categories[index].image),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              categories[index].title.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
