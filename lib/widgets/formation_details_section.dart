import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';

class FomationDetailsSection extends StatelessWidget {
  const FomationDetailsSection({
    super.key,
    required this.formationModel,
  });

  final FormationModel formationModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formationModel.title,
          style: AppStyles.style20SemiBold(
            context,
            color: AppColors.textColor,
          ),
        ),
        Gap(12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.access_time,
              size: 20,
              color: AppColors.gray1Color,
            ),
            Gap(4),
            Text(
              "${formationModel.duree} • ${formationModel.salle}",
              style: AppStyles.style14Regular(
                context,
                color: AppColors.gray1Color,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.secondaryColor,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 20,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    "${formationModel.nbPlaceTotal - formationModel.placeRestant} personnes",
                    style: AppStyles.style14Regular(
                      context,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
