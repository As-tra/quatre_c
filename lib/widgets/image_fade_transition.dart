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
      child: Center(
        child: Image(
          image: AssetImage(Assets.images4Clogo),
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}
