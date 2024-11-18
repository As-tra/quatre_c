import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/custom_icon_button.dart';

class CustomFormationViewAppBar extends StatelessWidget {
  const CustomFormationViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomIconButton(
          backgroundColor: Colors.white,
          asset: Assets.iconsReturn,
        ),
        Text(
          "Formations Microsoft",
          style: AppStyles.style18SemiBold(
            context,
            color: const Color(0xff2C2C2C),
          ),
        ),
        const Gap(48),
      ],
    );
  }
}
