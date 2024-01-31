import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widgets/input_widget.dart';
import '../../widgets/text_button_widget.dart';
import '../../constants/path_icons.dart';
import '../../constants/path_images.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_texts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _numberPhoneContro;
  late TextEditingController _passwordContro;
  late TextEditingController _userNameContro;

  @override
  void initState() {
    super.initState();

    _numberPhoneContro = TextEditingController();
    _passwordContro = TextEditingController();
    _userNameContro = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark, statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              Image.asset(
                PathImage.bgRegister,
                width: mq.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 15,
                top: 50,
                child: Image.asset(
                  PathImage.iconFlower,
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Đăng ký tài khoản',
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(TextSpan(
                    text: 'Hello, welcome to ',
                    style: AppTexts.heading2,
                    children: [
                      TextSpan(text: 'FamilyTree', style: TextStyle(color: AppColors.greenColor)),
                    ],
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    heightFactor: 1.4,
                    child: Image.asset(
                      PathImage.logo,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        InputWidget(
                          icon: PathIcons.iconPhone,
                          isIcon: true,
                          textEditingController: _numberPhoneContro,
                          hintText: 'Nhập số điện thoại',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputWidget(
                          textEditingController: _userNameContro,
                          icon: PathIcons.iconUserPen,
                          hintText: 'Nhập tên của bạn',
                          isIcon: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputWidget(
                          textEditingController: _passwordContro,
                          icon: PathIcons.iconLock,
                          hintText: 'Nhập mật khẩu',
                          isPassword: true,
                          isIcon: true,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextButtonWidget(
                    text: 'Đăng ký',
                    color: AppColors.greenColor,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Bạn chưa có tài khoản? ',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.lightGreyColor)),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Đăng nhập', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xffE7AA32)))),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.lightGreyColor)),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Hoặc đăng nhập với',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.lightGreyColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 1,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.lightGreyColor)),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(PathImage.iconFace),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(PathImage.iconGoogle),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(PathImage.iconIos),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
