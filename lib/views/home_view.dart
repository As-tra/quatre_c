import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quatre_c/utils/app_colors.dart';
import 'package:quatre_c/utils/assets.dart';
import 'package:quatre_c/widgets/formation_view_body.dart';
import 'package:quatre_c/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final List<Widget> _views = [
    const HomeViewBody(),
    const FormationViewBody(),
    const Center(
      child: Text("Reservation View"),
    ),
    const Center(
      child: Text("Profile View"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _views[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.iconsHome,
                colorFilter: ColorFilter.mode(
                  AppColors.gray2Color,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                Assets.iconsHome,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.iconsCourses,
                colorFilter: ColorFilter.mode(
                  AppColors.gray2Color,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                Assets.iconsCourses,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.iconsReservations,
                colorFilter: ColorFilter.mode(
                  AppColors.gray2Color,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                Assets.iconsReservations,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.iconsProfile,
                colorFilter: ColorFilter.mode(
                  AppColors.gray2Color,
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: SvgPicture.asset(
                Assets.iconsProfile,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
