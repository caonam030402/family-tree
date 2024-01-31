import 'package:family_tree/components/button.dart';
import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/pages/onboarding_page/index.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String icon;
  final String image;
  final String title;
  final String content;
  final int indexPage;
  final PageController controller;
  const IntroPage(
      {super.key,
      required this.icon,
      required this.indexPage,
      required this.controller,
      required this.title,
      required this.content,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  introPageItem.length == indexPage
                      ? Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 352,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topLeft,
                                  colors: [
                                AppColors.primaryColor,
                                Color(0xFFA2CC81),
                                Color(0xFFA2CC81)
                              ])),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 352,
                          color: AppColors.primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(title,
                  style: AppTexts.heading1.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                icon,
                height: 45,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 326,
                child: Text(
                  content,
                  style: AppTexts.heading4.copyWith(color: AppColors.greyColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      radius: 10,
                      dotWidth: 6,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 82,
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: introPageItem.length == indexPage
            ? Button(
                title: 'Bắt đầu',
                onTap: () {
                  if (introPageItem.length == indexPage) {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  }
                },
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text(
                      'Bỏ qua',
                      style: AppTexts.heading5
                          .copyWith(color: AppColors.primaryColor),
                    ),
                    onTap: () {
                      controller.animateToPage(
                        introPageItem.length,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor),
                      child: const Icon(Icons.arrow_forward,
                          color: AppColors.whiteColor),
                    ),
                    onTap: () {
                      if (controller.hasClients) {
                        controller.animateToPage(indexPage,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      }
                    },
                  )
                ],
              ),
      ),
    );
  }
}
