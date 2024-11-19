import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quatre_c/utils/app_router.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/widgets/image_fade_transition.dart';
import 'package:quatre_c/widgets/text_fade_transition.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    initFadeAnimation();
    navigationToIntroScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LogoFadeTransition(fadeAnimation: fadeAnimation),
        Gap(4),
        TextFadeTransition(fadeAnimation: fadeAnimation)
      ],
    );
  }

  void initFadeAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    animationController.forward();
  }

  void navigationToIntroScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRouter.introView);
    });
  }
}
