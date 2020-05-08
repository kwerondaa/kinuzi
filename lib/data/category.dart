import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: 'All Recipes',
  icon: Icons.search,
);

final beef = Category(
  categoryId: 1,
  name: 'Beef',
  icon: Icons.category,
);

final goatsmeat = Category(
  categoryId: 2,
  name: 'Goats Meat',
  icon: Icons.bubble_chart,
);

final fish = Category(
  categoryId: 3,
  name: 'Fish',
  icon: Icons.compare_arrows,
);

final mandanzi = Category(
  categoryId: 4,
  name: 'Mandanzi',
  icon: Icons.donut_large,
);

final categories = [
  allCategory,
  beef,
  goatsmeat,
  fish,
  mandanzi,
];
