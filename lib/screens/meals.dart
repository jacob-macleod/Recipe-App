import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({required this.title, required this.meals, super.key});
  final String? title;
  final List<Meal> meals;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
    );
  }
}