import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails(this.meal, {super.key});
  final Meal? meal;

  @override
  Widget build(context) {
    return Scaffold(
      body: Text(meal?.title ?? 'Error'),
    );
  }
}
