import 'package:family_tree/components/button.dart';
import 'package:family_tree/components/input_text_icon.dart';
import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_styles.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  AppColors.primaryColor,
                  AppColors.whiteColor,
                  AppColors.whiteColor
                ])),
          ),
          Positioned(
            top: 300,
            left: -140,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryColor.withOpacity(0.5),
                      AppColors.primaryColor.withOpacity(0.1),
                      AppColors.primaryColor.withOpacity(0.1)
                    ]),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppStyles.paddingBothSidesPage),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.only(right: 3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: AppColors.whiteColor),
                          color: AppColors.greyColor.withOpacity(0.6),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.blackColor,
                            size: 20,
                          ),
                        ))
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Đăng nhập tài khoản',
                          style: AppTexts.heading1
                              .copyWith(color: AppColors.blackColor),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Hello, welcome to',
                              style: AppTexts.heading2
                                  .copyWith(color: AppColors.blackColor),
                              children: [
                                TextSpan(
                                    text: ' Genealogy',
                                    style: AppTexts.heading2.copyWith(
                                        color: const Color(0xFF0B868C),
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Image.asset(PathImage.im_family),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const InputTextIcon(
                          hintText: 'Nhập số điện thoại',
                          icon: Icon(Icons.phone_outlined),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const InputTextIcon(
                          hintText: 'Nhập mật khẩu',
                          icon: Icon(Icons.lock),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  Button(
                    title: 'Đăng nhập',
                    isGreen: true,
                    onTap: () {
                      Navigator.pushReplacementNamed(context, AppRoutes.home);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.forgot);
                        },
                        child: Text(
                          'Quên mật khẩu?',
                          style: AppTexts.heading5
                              .copyWith(color: AppColors.greyColor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bạn chưa có tài khoản? ',
                        style: AppTexts.heading5
                            .copyWith(color: AppColors.blackColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.signUp);
                        },
                        child: Text('Đăng ký',
                            style: AppTexts.heading5
                                .copyWith(color: AppColors.primaryColor)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: AppColors.greyColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Hoặc đăng nhập với',
                          style: AppTexts.heading5
                              .copyWith(color: AppColors.greyColor),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: AppColors.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset(PathImage.im_facebook),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        child: Image.asset(PathImage.im_google),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        child: Image.asset(PathImage.im_apple),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
