import 'package:family_tree/pages/home_page/index.dart';
import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/onboarding_page/index.dart';
import 'package:family_tree/pages/change_password_page/index.dart';
import 'package:family_tree/pages/create_tree_page/index.dart';
import 'package:family_tree/pages/detail_tree_page/index.dart';
import 'package:family_tree/pages/edit_profile_page/index.dart';
import 'package:family_tree/pages/my_tree_page/index.dart';
import 'package:family_tree/pages/onboarding_page/widgets/splash.dart';
import 'package:family_tree/pages/sign_in_page/index.dart';

class AppRoutes {
  static const main = '/main';
  static const splash = '/splash';
  static const signIn = '/signIn';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const editProfile = '/edit_profile';
  static const changePassword = '/change_password';
  static const createTree = '/create_tree';
  static const myTree = '/my_tree';
  static const detailTree = '/detail_tree';

  static final pages = {
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.splash: (context) => const Splash(),
    AppRoutes.onboarding: (context) => const OnboardingPage(),
    AppRoutes.signIn: (context) => const SignInPage(),
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.editProfile: (context) => const EditProfilePage(),
    AppRoutes.changePassword: (context) => const ChangePasswordPage(),
    AppRoutes.createTree: (context) => const CreateTreePage(),
    AppRoutes.myTree: (context) => const MyTreePage(),
    AppRoutes.detailTree: (context) => const DetailTreePage(),
  };
}
