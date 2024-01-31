import 'package:family_tree/constants/path_icons.dart';
import 'package:family_tree/pages/event_page/index.dart';
import 'package:family_tree/pages/home_page/index.dart';
import 'package:family_tree/pages/profile_page/index.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = <Widget>[
    HomePage(),
    const EventPage(),
    const ProfilePage(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const gapIconAndLabel = EdgeInsets.only(bottom: 5);
    Color iconActive(int index) {
      return currentIndex == index
          ? AppColors.primaryColor
          : AppColors.greyColor;
    }

    ;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: AppColors.whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryColor,
            currentIndex: currentIndex,
            selectedLabelStyle: AppTexts.heading5,
            unselectedLabelStyle: AppTexts.heading5,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: gapIconAndLabel,
                    child: SvgPicture.asset(PathIcons.ic_home,
                        color: iconActive(0)),
                  ),
                  label: 'Trang chủ'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: gapIconAndLabel,
                    child: SvgPicture.asset(PathIcons.ic_event,
                        color: iconActive(1)),
                  ),
                  label: 'Sự kiện'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: gapIconAndLabel,
                    child: SvgPicture.asset(PathIcons.ic_user,
                        color: iconActive(3)),
                  ),
                  label: 'Tài khoản')
            ]),
      ),
    );
  }
}
