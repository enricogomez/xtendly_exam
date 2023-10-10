import 'package:flutter/material.dart';
import 'package:xtendly_exam/data/models/category_model.dart';
import 'package:xtendly_exam/presentation/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    required this.categories,
    super.key,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Column(
            children: categories
                .map(
                  (category) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CategoryCard(category: category),
                  ),
                )
                .toList(),
          );
        } else {
          return Row(
            children: categories
                .map(
                  (category) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: CategoryCard(category: category),
                    ),
                  ),
                )
                .toList(),
          );
        }
      },
    );
  }
}
