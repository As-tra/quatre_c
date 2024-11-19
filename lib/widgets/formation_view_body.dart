import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/widgets/custom_formation_view_app_bar.dart';
import 'package:quatre_c/widgets/custom_search_bar.dart';

class FormationViewBody extends StatelessWidget {
  const FormationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfaceColor,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Gap(22),
              CustomFormationViewAppBar(),
              Gap(28),
              CustomSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
