import 'package:flutter/material.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.ontap,
    required this.text,
  });
  final VoidCallback ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.style16SemiBold(
            context,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
