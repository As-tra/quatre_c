import 'package:flutter/material.dart';
import 'package:quatre_c/utils/assets.dart';

class LogoFadeTransition extends StatelessWidget {
  const LogoFadeTransition({
    super.key,
    required this.fadeAnimation,
  });

  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: fadeAnimation,
        child: const Image(image: AssetImage(Assets.logo4C)));
  }
}
