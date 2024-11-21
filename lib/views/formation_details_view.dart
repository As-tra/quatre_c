import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/widgets/formation_details_view_body.dart';

class FormationDetailsView extends StatelessWidget {
  const FormationDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    FormationModel formationModel = Get.arguments;
    return Scaffold(
      backgroundColor: AppColors.surfaceColor,
      body: FormationDetailsViewBody(formationModel: formationModel),
    );
  }
}
