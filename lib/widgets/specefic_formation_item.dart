import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/assets.dart';

class SpecificFormationItem extends StatelessWidget {
  const SpecificFormationItem({super.key});

  @override
  Widget build(BuildContext context) {
    final formationModel = FormationModel(
      image: Assets.iconsWord,
      title: 'Formation Word',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min',
    );

    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = screenWidth * 0.19;
    final padding = screenWidth * 0.04;
    final fontSizeTitle = screenWidth * 0.045;
    final fontSizeSubtitle = screenWidth * 0.035;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: padding),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  formationModel.image,
                ),
              ),
            ),
            SizedBox(width: padding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formationModel.title,
                    style: TextStyle(fontSize: fontSizeTitle),
                  ),
                  SizedBox(height: padding * 0.5),
                  Text(
                    '${formationModel.salle} / ${formationModel.placeRestant} Places Restantes',
                    style: TextStyle(fontSize: fontSizeSubtitle),
                  ),
                  SizedBox(height: padding * 0.7),
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 18, color: Colors.blue),
                      SizedBox(width: padding * 0.5),
                      Text(
                        "Durée: ${formationModel.duree}",
                        style: TextStyle(fontSize: fontSizeSubtitle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
const List<FormationModel> categoriesList = [
  FormationModel(
      image: Assets.iconsWord,
      title: 'Formation Word',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min'),
  FormationModel(
      image: Assets.iconsPowerPoint,
      title: 'Formation PowerPoint',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min'),
  FormationModel(
      image: Assets.iconsExcel,
      title: 'Formation Excel',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min'),
  FormationModel(
      image: Assets.iconsTeams,
      title: 'Formation Teams',
      placeRestant: 2,
      salle: 'Salle 4C',
      duree: '1h 30min'),
];
*/