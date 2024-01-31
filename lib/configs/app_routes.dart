

import 'package:family_tree/pages/add_brother_page/index.dart';
import 'package:family_tree/pages/infoo_person_page/index.dart';

class AppRoutes {
  static const main = '/main';
  static const splash = '/splash';

  static final pages = {
    AppRoutes.main: (context) => Index(),
    AppRoutes.splash: (context) => Detail(),
  };
}

