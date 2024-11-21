
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormationCover extends StatelessWidget {
  const FormationCover({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.61,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
