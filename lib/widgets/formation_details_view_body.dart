import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/widgets/custom_button.dart';
import 'package:quatre_c/widgets/custom_formation_action_list.dart';
import 'package:quatre_c/widgets/custom_formation_view_app_bar.dart';
import 'package:quatre_c/widgets/formation_cover.dart';
import 'package:quatre_c/widgets/formation_details_section.dart';

class FormationDetailsViewBody extends StatelessWidget {
  const FormationDetailsViewBody({super.key, required this.formationModel});
  final FormationModel formationModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(title: "Détails de la Formation"),
              Gap(28),
              FormationCover(image: formationModel.image),
              Gap(28),
              FomationDetailsSection(formationModel: formationModel),
              Gap(56),
              CustomFormationActionList(),
              Gap(56),
              CustomButton(ontap: () {}, text: "Réserver Maintenant"),
              Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
