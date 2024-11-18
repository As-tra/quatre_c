import 'package:get/get.dart';
import 'package:quatre_c/views/home_view.dart';
import 'package:quatre_c/views/intro_view.dart';

abstract class AppRouter {
  static String introView = "/";
  static String homeView = "/homeView";

  static List<GetPage<dynamic>>? getViews() {
    return [
      GetPage(
        name: introView,
        page: () => const IntroView(),
      ),
      GetPage(
        name: homeView,
        page: () => const HomeView(),
      ),
    ];
  }
}
