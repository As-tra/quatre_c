import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/formation_action_model.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/custom_formation_action.dart';

class CustomFormationActionList extends StatelessWidget {
  const CustomFormationActionList({super.key});
  static List<FormationActionModel> items = [
    FormationActionModel(
      actionName: "Choisir une autre date",
      details: "15/05/2024  9h 30min",
      icon: Assets.iconsChoisirDate,
    ),
    FormationActionModel(
      actionName: "Choisir une autre poste",
      details: "Poste 5",
      icon: Assets.iconsChoisirPoste,
    ),
    FormationActionModel(
      actionName: "Regarder le video du formation",
      details: "15 min",
      icon: Assets.iconsPlay,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (context, index) => Gap(27),
      itemBuilder: (context, index) {
        return CustomFormationAction(actionModel: items[index]);
      },
    );
  }
}
