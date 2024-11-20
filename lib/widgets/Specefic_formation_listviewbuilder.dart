import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/specefic_formation_item.dart';

class SpeceficFormationListviewbuilder extends StatelessWidget {
  const SpeceficFormationListviewbuilder({super.key});

  static const List<FormationModel> formationList = [
    FormationModel(
      image: Assets.iconsWord,
      title: 'Formation Word',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min',
    ),
    FormationModel(
      image: Assets.iconsPowerPoint,
      title: 'Formation PowerPoint',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min',
    ),
    FormationModel(
      image: Assets.iconsExcel,
      title: 'Formation Excel',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min',
    ),
    FormationModel(
      image: Assets.iconsTeams,
      title: 'Formation Teams',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<SpecificFormationItem> items = formationList
        .map(
          (e) => SpecificFormationItem(formationModel: e),
        )
        .toList();
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverList.separated(
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (context, index) => Gap(12),
      ),
    );
  }
}
