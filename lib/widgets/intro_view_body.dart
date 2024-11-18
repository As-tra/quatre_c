import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:quatre_c/utils/app_router.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';

class IntroViewBody extends StatefulWidget {
  const IntroViewBody({super.key});

  @override
  State<IntroViewBody> createState() => _IntroViewBodyState();
}

class _IntroViewBodyState extends State<IntroViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRouter.homeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(),
        _buildText(context),
      ],
    );
  }

  SafeArea _buildText(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(70),
            Text(
              "Développez Vos\nCompétences , Accélérez\nVotre Carrière",
              style: AppStyles.style24ExtraBold(
                context,
                color: Colors.white,
              ),
            ),
            const Gap(12),
            Text(
              "Trouvez la Certification qui vous\ncorrespond, réservez facilement, et \nbrillez !",
              style: AppStyles.style18Regular(
                context,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align _buildBackground() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        Assets.imagesIntroBackground,
      ),
    );
  }
}
