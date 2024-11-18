import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quatre_c/models/category_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';

class FormationWidget extends StatelessWidget {
  const FormationWidget({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: SvgPicture.asset(
              width: 10,
              Assets.iconsCourses,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const Spacer(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "${categoryModel.formationNumber} Formations",
              style: AppStyles.style11Regular(
                context,
                color: AppColors.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
