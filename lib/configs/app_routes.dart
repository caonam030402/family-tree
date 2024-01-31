import 'package:family_tree/pages/home_page/index.dart';
import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/onboarding_page/index.dart';
import 'package:family_tree/pages/onboarding_page/widgets/splash.dart';
import 'package:family_tree/pages/sign_in_page/index.dart';

class AppRoutes {
  static const main = '/main';
  static const splash = '/splash';
  static const signIn = '/signIn';
  static const onboarding = '/onboarding';
  static const home = '/home';

  static final pages = {
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.splash: (context) => const Splash(),
    AppRoutes.onboarding: (context) => const OnboardingPage(),
    AppRoutes.signIn: (context) => const SignInPage(),
    AppRoutes.home: (context) => const HomePage(),
  };
}
