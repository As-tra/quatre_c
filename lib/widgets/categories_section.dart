import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/category_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/categories_grid_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static const List<CategoryModel> categoriesList = [
    CategoryModel(
      image: Assets.imagesMicrosoft,
      title: "Formations certifiantes pour Microsoft",
      formationNumber: 50,
      studentNumber: 40,
    ),
    CategoryModel(
      image: Assets.imagesAi,
      title: "Formations certifiantes pour Ai",
      formationNumber: 50,
      studentNumber: 40,
    ),
    CategoryModel(
      image: Assets.imagesPython,
      title: "Formations certifiantes pour Python",
      formationNumber: 50,
      studentNumber: 40,
    ),
    CategoryModel(
      image: Assets.imagesSecurity,
      title: "Formations certifiantes pour Cybersécurité",
      formationNumber: 50,
      studentNumber: 40,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Catégories",
          style: AppStyles.style16SemiBold(
            context,
            color: AppColors.textColor,
          ),
        ),
        const Gap(16),
        const CategoriesGridView(
          categoryModelList: categoriesList,
        ),
      ],
    );
  }
}
