import 'package:flutter/material.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/widgets/formation_view_body.dart';

class FormationView extends StatelessWidget {
  const FormationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfaceColor,
      body: const FormationViewBody(),
    );
  }
}
