import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quatre_c/models/formation_action_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';

class CustomFormationAction extends StatelessWidget {
  const CustomFormationAction({super.key, required this.actionModel});
  final FormationActionModel actionModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        actionModel.actionName,
        textAlign: TextAlign.start,
        style: AppStyles.style16Medium(
          context,
          color: AppColors.textColor,
        ),
      ),
      subtitle: Text(
        actionModel.details,
        style: AppStyles.style16Regular(
          context,
          color: AppColors.gray3Color,
        ),
      ),
      leading: CircleAvatar(
        radius: 21,
        backgroundColor: AppColors.primaryColor,
        child: SvgPicture.asset(actionModel.icon),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.primaryColor,
      ),
    );
  }
}
