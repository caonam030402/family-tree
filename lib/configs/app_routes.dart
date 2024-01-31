import 'package:family_tree/pages/change_password_page/index.dart';
import 'package:family_tree/pages/create_tree_page/index.dart';
import 'package:family_tree/pages/detail_tree_page/index.dart';
import 'package:family_tree/pages/edit_profile_page/index.dart';
import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/my_tree_page/index.dart';
import 'package:family_tree/pages/onboarding_page/widgets/splash.dart';

class AppRoutes {
  static const main = '/main';
  static const splash = '/splash';
  static const editProfile = '/edit_profile';
  static const changePassword = '/change_password';
  static const createTree = '/create_tree';
  static const myTree = '/my_tree';
  static const detailTree = '/detail_tree';

  static final pages = {
    AppRoutes.main: (context) => const MainPage(),
    AppRoutes.splash: (context) => const Splash(),
    AppRoutes.editProfile: (context) => const EditProfilePage(),
    AppRoutes.changePassword: (context) => const ChangePasswordPage(),
    AppRoutes.createTree: (context) => const CreateTreePage(),
    AppRoutes.myTree: (context) => const MyTreePage(),
    AppRoutes.detailTree: (context) => const DetailTreePage(),
  };
}
