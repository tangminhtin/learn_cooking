import 'package:flutter/material.dart';
import 'package:learn_cooking/models/category.dart';
import 'package:learn_cooking/screen/category_screen.dart';
import 'package:learn_cooking/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff59CE8F),
        ),
      ),
      home: const CategoryScreen(),
    );
  }
}
