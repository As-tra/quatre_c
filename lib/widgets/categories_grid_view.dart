import 'package:flutter/material.dart';
import 'package:quatre_c/models/category_model.dart';
import 'package:quatre_c/widgets/category_widget.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
    required this.categoryModelList,
  });

  final List<CategoryModel> categoryModelList;

  @override
  Widget build(BuildContext context) {
    List<CategoryWidget> items = categoryModelList
        .map(
          (category) => CategoryWidget(
            categoryModel: category,
          ),
        )
        .toList();
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 162 / 202,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => items[index],
      itemCount: 4,
    );
  }
}
