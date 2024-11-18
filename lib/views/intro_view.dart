import 'package:flutter/material.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: const IntroViewBody(),
    );
  }
}