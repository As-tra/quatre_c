import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';

class SpecificFormationItem extends StatelessWidget {
  const SpecificFormationItem({super.key, required this.formationModel});
  final FormationModel formationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 18,
            spreadRadius: 0,
            color: AppColors.primaryColor.withOpacity(0.04),
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: 110,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.secondaryColor,
              ),
              child: SvgPicture.asset(
                formationModel.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Gap(18),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    formationModel.title,
                    style: AppStyles.style16Medium(
                      context,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
                Gap(6),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '${formationModel.salle} / ${formationModel.placeRestant} Places Restantes',
                    style: AppStyles.style14Regular(
                      context,
                      color: AppColors.gray1Color,
                      height: 1,
                    ),
                  ),
                ),
                Gap(15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 18,
                      color: AppColors.gray2Color,
                    ),
                    Gap(3),
                    Text(
                      "Durée: ${formationModel.duree}",
                      style: AppStyles.style11Regular(
                        context,
                        color: AppColors.gray2Color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
