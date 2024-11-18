import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FONT_FAMILY,
        colorScheme: const ColorScheme.light(),
        scaffoldBackgroundColor: AppColors.surfaceColor,
      ),
    );
  }
}
