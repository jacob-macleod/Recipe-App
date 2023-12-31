import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/error_message.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen(
      {required this.title,
      required this.meals,
      required this.showScreen,
      super.key});
  final void Function(String, BuildContext, {String? categoryTitle}) showScreen;
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

    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: (selected_meals.isEmpty)
          ? const ErrorMessage(
              header: "Uh oh, there is a problem",
              message: "There are no meals in this category",
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  for (final meal_item in selected_meals)
                    MealItem(
                      meal: meal_item,
                      showScreen: showScreen,
                    ),
                ],
              ),
            ),
    );
  }
}
