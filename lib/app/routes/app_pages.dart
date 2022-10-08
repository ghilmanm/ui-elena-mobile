import '../bindings/login_binding.dart';
import '../ui/pages/login_page/login_page.dart';
      import '../bindings/start_binding.dart';
import '../ui/pages/start_page/start_page.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/splash_page/splash_page.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import 'app_routes.dart';

const _defaultTransition = Transition.native;
const _rightToLeftTransition = Transition.rightToLeftWithFade;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.UNKNOWN,
    page: () => const UnknownRoutePage(),
    transition: _defaultTransition,
  );

  static final List<GetPage> pages = [
    unknownRoutePage,
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.START,
      page: () => const StartPage(),
      binding: StartBinding(),
      transition: _rightToLeftTransition,
      transitionDuration: const Duration(milliseconds: 300)
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: _rightToLeftTransition,
        transitionDuration: const Duration(milliseconds: 250)
    ), 
];
}