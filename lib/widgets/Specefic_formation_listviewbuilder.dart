import 'package:flutter/material.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/specefic_formation_item.dart';

class SpeceficFormationListviewbuilder extends StatelessWidget {
  const SpeceficFormationListviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const List<FormationModel> categoriesList = [
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

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SpecificFormationItem(
            formationModel: categoriesList[index],
          ),
        ),
        childCount: categoriesList.length,
      ),
    );
  }
}
