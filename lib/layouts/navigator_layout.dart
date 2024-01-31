import 'package:family_tree/constants/path_icons.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigatorLayout extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTapNavigatorBar;
  const NavigatorLayout({Key? key, required this.currentIndex, this.onTapNavigatorBar});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Container(
      height: mq.height * 0.09,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 32,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        unselectedItemColor: AppColors.greyColor,
        currentIndex: currentIndex,
        onTap: onTapNavigatorBar,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                PathIcons.iconHome,
                color: currentIndex == 0 ? AppColors.primaryColor : AppColors.greyColor,
              ),
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                PathIcons.iconBuld,
                color: currentIndex == 1 ? AppColors.primaryColor : AppColors.greyColor,
              ),
            ),
            label: 'Sự kiện',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                PathIcons.iconUser,
                color: currentIndex == 2 ? AppColors.primaryColor : AppColors.greyColor,
              ),
            ),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }
}
