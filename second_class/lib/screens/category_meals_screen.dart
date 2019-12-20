import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/MealItem.dart';
import '../dummy-data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routName = '/category-meals';
  //final String categoryId;
  //final String categoryTitle;

  //CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var a = categoryMeals[index];

          return MealItem(
              id: a.id,
              title: a.title,
              imageUrl: a.imageUrl,
              affordability: a.affordability,
              complexity: a.complexity,
              duration: a.duration);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
