import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.backgroundColor,
    required this.asset,
    this.onTap,
  });

  final Color backgroundColor;
  final String asset;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: backgroundColor,
        ),
        child: SvgPicture.asset(
          asset,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
