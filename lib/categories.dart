import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Text("Category 1", style: TextStyle(color: Colors.white)),
          Text("Category 2", style: TextStyle(color: Colors.white)),
          Text("Category 3", style: TextStyle(color: Colors.white)),
          Text("Category 4", style: TextStyle(color: Colors.white)),
          Text("Category 5", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
