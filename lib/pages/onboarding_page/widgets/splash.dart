import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/pages/onboarding_page/index.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splashIconSize: double.infinity,
      splash: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            const Spacer(
              flex: 12,
            ),
            SizedBox(
              width: 230,
              height: 280,
              child: Center(
                  child: Image.asset(PathImage.im_logo, fit: BoxFit.cover)),
            ),
            const Spacer(
              flex: 15,
            ),
            Text(
              'Chào mừng bạn đến với FamilyTree',
              style: AppTexts.heading5.copyWith(
                  color: AppColors.blackColor.withOpacity(0.47),
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
      nextScreen: OnboardingPage(),
    );
  }
}
