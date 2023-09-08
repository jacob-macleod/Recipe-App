import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {required this.category, required this.showScreen, super.key});
  final Category category;
  final void Function(String, BuildContext, {String? categoryTitle}) showScreen;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        showScreen('meals list', context, categoryTitle: category.title);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
