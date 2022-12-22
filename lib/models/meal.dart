import 'package:learn_cooking/models/category.dart';
import 'package:learn_cooking/models/step.dart';
import 'package:learn_cooking/models/tip.dart';

enum Complexity {
  simple,
  medium,
  hard,
}

class Meal {
  final String id;
  final String title;
  final String? subtitle;
  final List<String> categories;
  final int prepare;
  final int processing;
  final Complexity complexity;
  final String coverImage;
  final List<String> ingredients;
  final List<Tip>? tips;
  final List<String>? ingredientImages;
  final List<Step> steps;

  const Meal({
    required this.id,
    required this.title,
    this.subtitle,
    required this.categories,
    required this.prepare,
    required this.processing,
    required this.complexity,
    required this.coverImage,
    required this.ingredients,
    this.ingredientImages,
    this.tips,
    required this.steps,
  });
}
