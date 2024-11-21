import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/widgets/Specefic_formation_listviewbuilder.dart';
import 'package:quatre_c/widgets/custom_formation_view_app_bar.dart';
import 'package:quatre_c/widgets/custom_search_bar.dart';

class FormationViewBody extends StatelessWidget {
  const FormationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(22),
                  CustomAppBar(title: "Formations Microsoft"),
                  Gap(28),
                  CustomSearchBar(),
                  Gap(29),
                ],
              ),
            ),
          ),
          const SpeceficFormationListviewbuilder(),
          SliverToBoxAdapter(
            child: Gap(20),
          ),
        ],
      ),
    );
  }
}
