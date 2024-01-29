import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/onboarding_page/widgets/splash.dart';

class AppRoutes {
  static const main = '/main';
  static const splash = '/splash';

  static final pages = {
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.splash: (context) => const Splash(),
  };
}
