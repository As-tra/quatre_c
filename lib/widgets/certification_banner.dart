import 'package:flutter/material.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';
import 'package:quatre_c/utils/assets.dart';

class CertificationBanner extends StatelessWidget {
  const CertificationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      height: 113,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        image: const DecorationImage(
          image: AssetImage(
            Assets.imagesHomeBanner,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              "Dicoverer Nos Certifications",
              style: AppStyles.style19Medium(
                context,
                color: AppColors.textColor,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "+100",
                    style: AppStyles.style30ExtraBold(
                      context,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: " Disponibles",
                    style: AppStyles.style19Medium(
                      context,
                      color: AppColors.textColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
