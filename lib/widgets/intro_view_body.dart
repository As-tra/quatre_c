import 'package:flutter/material.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            Assets.imagesIntroBackground,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33.0),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Text(
                "Développez Vos\n Compétences , Accélérez\n Votre Carrière",
                style: AppStyles.style24SemiBold(context),
              ),
              Text(
                "Trouvez la Certification qui vous\n correspond, réservez facilement, et \nbrillez !",
                style: AppStyles.style18Regular(context),
              )
            ],
          ),
        ),
      ],
    );
  }
}
