import 'package:flutter/material.dart';
import 'package:quatre_c/utils/app_styles.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Bonjour, Hidaya",
        style: AppStyles.style20SemiBold(
          context,
        ),
      ),
    );
  }
}
