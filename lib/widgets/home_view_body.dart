import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/widgets/home_header_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Gap(20),
          HomeHeaderSection(
            title: "Bonjour, Hidaya",
          ),
        ],
      ),
    );
  }
}
