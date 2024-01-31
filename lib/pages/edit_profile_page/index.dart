import 'package:family_tree/pages/create_tree_page/index.dart';
import 'package:family_tree/pages/edit_profile_page/widgets/InputField.dart';
import 'package:family_tree/pages/edit_profile_page/widgets/input_box.dart';
import 'package:family_tree/pages/edit_profile_page/widgets/input_radio.dart';
import 'package:family_tree/pages/edit_profile_page/widgets/text_editor.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 72,
          leadingWidth: 72,
          leading: Container(
            padding: const EdgeInsets.all(18),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              padding: const EdgeInsets.only(right: 2),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: const Color(0xFF181313).withOpacity(.37),
              ),
            ),
          ),
          title: const Text('Chỉnh sửa thông tin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          centerTitle: true,
          backgroundColor: const Color(0xFFE4A11B),
          scrolledUnderElevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: const Color(0xFFF6F6F7),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Stack(
                  children: [
                    const Text('Ảnh đại diện',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.50,
                        )),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/avatar_profile.png'),
                                width: 88,
                                height: 88),
                          ),
                          const Positioned(
                              bottom: 0,
                              right: 8,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/avatar_camera_icon.png'),
                                width: 20,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                const InputField(
                    label: 'Họ và tên',
                    required: true,
                    child: InputBox(hintText: 'Nhập họ và tên')),
                const InputField(
                    label: 'Số điện thoại',
                    required: true,
                    child: InputBox(hintText: 'Nhập số điện thoại')),
                const InputField(
                    label: 'Ngày tháng năm sinh',
                    child: InputBox(
                        hintText: 'dd/mm/yyyy', type: TextInputType.datetime)),
                const InputField(
                    label: 'Giới tính',
                    child: InputRadio(
                      values: ['Nam', 'Nữ', 'Khác'],
                    )),
                const InputField(
                    label: 'Quê quán',
                    child: InputBox(
                        hintText:
                            'xã Bình Trị, huyện Bình Sơn, Tỉnh Quảng Ngãi')),
                const InputField(
                    label: 'Còn sống/Đã mất',
                    child: InputRadio(
                      values: ['Còn sống', 'Đã mất'],
                    )),
                const InputField(
                    label: 'Tiểu sử',
                    child: TextEditor(
                      hint: 'Nhập tiểu sử',
                    )),
                const InputField(
                    label: 'Thành tựu',
                    child: TextEditor(hint: 'Nhập thành tựu của thành viên')),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_tree');
                      },
                      style: ButtonStyle(
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(14)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFE4A11B)),
                      ),
                      child: const Text('Lưu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ))),
                )
              ],
            ),
          ),
        ));
  }
}
