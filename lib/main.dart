import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/data/dummy_data.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget? displayScreen;

  void initState() {
    displayScreen = CategoriesScreen(showScreen);
    super.initState();
  }

  void showScreen(String screen, BuildContext context,
      {String? categoryTitle}) {
    if (screen == 'categories') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CategoriesScreen(showScreen),
        ),
      );
    } else if (screen == 'meals list') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              MealsScreen(title: categoryTitle, meals: dummyMeals),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: displayScreen,
    );
  }
}
