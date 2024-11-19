import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quatre_c/models/formation_model.dart';
import 'package:quatre_c/utils/app_styles.dart';

class SpecificFormationItem extends StatelessWidget {
  const SpecificFormationItem({super.key, required this.formationModel});
  final FormationModel formationModel;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = screenWidth * 0.22;
    final padding = screenWidth * 0.02;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 12, left: 20, right: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: imageSize,
                height: imageSize,
                padding: EdgeInsets.only(right: 18),
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
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Transform.scale(
                      scale: 1.8,
                      child: SvgPicture.asset(
                        formationModel.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      formationModel.title,
                      style: AppStyles.style16Medium(context),
                    ),
                    SizedBox(height: padding * 0.5),
                    Text(
                      '${formationModel.salle} / ${formationModel.placeRestant} Places Restantes',
                      style: AppStyles.style14Regular(context,
                          color: Color(0xff8C8C8C)),
                    ),
                    SizedBox(height: padding * 0.7),
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 18, color: Color(0xffD2D2D2)),
                        SizedBox(width: padding * 0.5),
                        Text(
                          "Durée: ${formationModel.duree}",
                          style: AppStyles.style11Regular(context,
                              color: Color(0xffD2D2D2)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
