import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/CategoryItem.dart';

import '../dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal'),),
      body: GridView(
      children: DUMMY_CATEGORIES
      .map(
        (catData) => CategoryItem(
          catData.id,
        catData.title,
        catData.color
      ),
      )
      .toList(),
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 /2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        ),
    ),
    );
  }
}