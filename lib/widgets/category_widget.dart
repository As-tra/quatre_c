import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:quatre_c/models/category_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_router.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/widgets/formation_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRouter.formationView),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                categoryModel.image,
                fit: BoxFit.fill,
              ),
            ),
            const Spacer(),
            Text(
              categoryModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.style13SemiBold(
                context,
                color: AppColors.textColor,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Expanded(
                  flex: 12,
                  child: FormationWidget(categoryModel: categoryModel),
                ),
                const Spacer(),
                Icon(
                  Icons.person,
                  color: AppColors.gray2Color,
                  size: 18,
                ),
                const Gap(2),
                Text(
                  categoryModel.studentNumber.toString(),
                  style: AppStyles.style13Medium(
                    context,
                    color: AppColors.gray2Color,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
