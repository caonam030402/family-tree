import 'package:family_tree/pages/chat_page/index.dart';
import 'package:family_tree/pages/createGenealogy_page/index.dart';
import 'package:family_tree/pages/create_event/create_event.dart';
import 'package:family_tree/pages/home_page/index.dart';
import 'package:family_tree/pages/changePassword_page/index.dart';
import 'package:family_tree/pages/forgotPassword_page/index.dart';

import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/notification/index.dart';
import 'package:family_tree/pages/onboarding_page/index.dart';
import 'package:family_tree/pages/change_password_page/index.dart';
import 'package:family_tree/pages/create_tree_page/index.dart';
import 'package:family_tree/pages/detail_tree_page/index.dart';
import 'package:family_tree/pages/edit_profile_page/index.dart';
import 'package:family_tree/pages/my_tree_page/index.dart';
import 'package:family_tree/pages/onboarding_page/widgets/splash.dart';
import 'package:family_tree/pages/sign_in_page/index.dart';
import 'package:family_tree/pages/sentOtp_page/index.dart';
import '../pages/search_filter/index.dart';
import '../pages/sign_up_page/index.dart';

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
  static const signUp = '/signUp';
  static const forgot = '/forgot';
  static const sendOtp = '/sendOtp';
  static const createEvent = '/CreateEventPage';
  static const notification = '/NotificationPage';
  static const searchFilter = '/SearchFilter';
  static const chat = '/chat';

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
    AppRoutes.signUp: (context) => const SignUp(),
    AppRoutes.forgot: (context) => const ForgotPassword(),
    AppRoutes.sendOtp: (context) => const SendOtp(),
    AppRoutes.createEvent: (context) => CreateEventPage(),
    AppRoutes.notification: (context) => const NotificationPage(),
    AppRoutes.searchFilter: (context) => const SearchFilter(),
    AppRoutes.chat: (context) => const ChatScreen(),
  };
}
