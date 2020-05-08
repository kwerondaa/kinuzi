import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kataleminimal/data/category.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class HomeCategoryWidget extends StatelessWidget {
  final Category category;

  const HomeCategoryWidget({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            category.name,
            style: TextStyle(
                color: isSelected ? Colors.green : Colors.grey.shade700,
                fontWeight: FontWeight.w500,
                fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
