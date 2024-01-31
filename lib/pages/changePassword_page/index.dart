import 'package:family_tree/constants/path_images.dart';
import 'package:family_tree/pages/main_page.dart';
import 'package:family_tree/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/input_widget.dart';
import '../../widgets/text_button_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _passwordNewController;
  late TextEditingController _rePasswordController;

  @override
  void initState() {
    super.initState();

    _passwordNewController = TextEditingController();
    _rePasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                PathImage.bgChangePass,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Đổi mật khẩu',
                style: TextStyle(fontSize: 26, color: AppColors.primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputWidget(
                    textEditingController: _passwordNewController,
                    hintText: 'Nhập mật khẩu mới',
                    isIcon: false,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputWidget(
                    isIcon: false,
                    textEditingController: _rePasswordController,
                    hintText: 'Xác nhận mật khẩu mới',
                    isPassword: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButtonWidget(
              text: 'Đổi mật khẩu',
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainPage()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
