import 'package:family_tree/styles/app_colors.dart';
import 'package:family_tree/styles/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../configs/app_routes.dart';
import '../../widgets/input_widget.dart';
import '../../widgets/text_button_widget.dart';
import '../../constants/path_icons.dart';
import '../../constants/path_images.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController _numberPhoneController;

  @override
  void initState() {
    super.initState();

    _numberPhoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              Positioned(
                right: mq.width * .15,
                top: mq.height * .07,
                child: Image.asset(
                  PathImage.bgForgetPass_1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(9999)),
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGreyColor),
                          child: const Icon(Icons.arrow_back_ios_sharp, color: AppColors.greyColor)),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      PathImage.bgForgetPass_2,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      'Quên mật khẩu',
                      style: TextStyle(fontSize: 26, color: AppColors.primaryColor, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Nhập số điện thoại đã đăng ký vào ô bên dưới',
                          style: AppTexts.heading4,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InputWidget(
                          icon: PathIcons.iconPhone,
                          textEditingController: _numberPhoneController,
                          hintText: 'Nhập số điện thoại',
                          isIcon: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButtonWidget(
                    text: 'Gửi',
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.sendOtp);
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
