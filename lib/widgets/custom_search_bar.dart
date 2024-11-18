import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/custom_icon_button.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: TextField(
              style: AppStyles.style16Medium(
                context,
                color: AppColors.textColor,
              ),
              decoration: InputDecoration(
                focusColor: Colors.white,
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                hintText: "Rechercher...",
                hintStyle: AppStyles.style16Medium(
                  context,
                  color: AppColors.gray3Color,
                ),
              ),
            ),
          ),
        ),
        const Gap(13),
        CustomIconButton(
          backgroundColor: AppColors.primaryColor,
          asset: Assets.iconsSearch,
        ),
      ],
    );
  }
}
