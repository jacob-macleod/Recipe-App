import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({required this.title, required this.meals, super.key});
  final String? title;
  final List<Meal> meals;
  late String categoryId = '';
  final List<Meal> selected_meals = [];

  @override
  Widget build(context) {
    // Find the ID of the category that was selected
    for (int i = 0; i < availableCategories.length; i++) {
      if (availableCategories[i].title == title) {
        categoryId = availableCategories[i].id;
      }
    }

    // Find the meals in the selected category
    for (Meal meal in meals) {
      if (meal.categories.contains(categoryId)) {
        selected_meals.add(meal);
      }
    }

    print(selected_meals);

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: Column(),
    );
  }
}
