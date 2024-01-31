import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool obscureTextOld = true;
  bool obscureTextNew = true;
  bool obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          'Đổi mật khẩu',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFE4A11B),
        toolbarHeight: 80.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF6F6F7), // Màu nền của body
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                    'assets/images/pass.png'), // Replace with your asset image path
                const SizedBox(height: 24),
                const Text(
                    'Vui lòng nhập mật khẩu mới bên dưới để tiến hành đổi mật khẩu',
                    textAlign: TextAlign.center),
                const SizedBox(height: 24),
                TextField(
                  obscureText: obscureTextOld,
                  decoration: InputDecoration(
                    labelText: 'Nhập mật khẩu cũ của bạn',
                    filled: true, // Chọn để có màu nền
                    fillColor: Colors.white, // Màu nền là trắng
                    border: InputBorder.none, // Loại bỏ viền
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureTextOld = !obscureTextOld;
                        });
                      },
                      child: Icon(
                        obscureTextOld
                            ? Icons.visibility_off
                            : Icons
                                .visibility, // Chọn icon dựa trên trạng thái obscureText
                        color: Colors.grey, // Màu của icon
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: obscureTextNew,
                  decoration: InputDecoration(
                    labelText: 'Nhập mật khẩu mới',
                    filled: true, // Chọn để có màu nền
                    fillColor: Colors.white, // Màu nền là trắng
                    border: InputBorder.none, // Loại bỏ viền
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureTextNew = !obscureTextNew;
                        });
                      },
                      child: Icon(
                        obscureTextNew
                            ? Icons.visibility_off
                            : Icons
                                .visibility, // Chọn icon dựa trên trạng thái obscureText
                        color: Colors.grey, // Màu của icon
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: obscureTextConfirm,
                  decoration: InputDecoration(
                    labelText: 'Xác nhận mật khẩu mới',
                    filled: true, // Chọn để có màu nền
                    fillColor: Colors.white, // Màu nền là trắng
                    border: InputBorder.none, // Loại bỏ viền
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureTextConfirm = !obscureTextConfirm;
                        });
                      },
                      child: Icon(
                        obscureTextConfirm
                            ? Icons.visibility_off
                            : Icons
                                .visibility, // Chọn icon dựa trên trạng thái obscureText
                        color: Colors.grey, // Màu của icon
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 84),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFE4A11B),
                    padding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 16), // Padding của nút
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5), // Bo tròn góc là 5px
                    ),
                  ),
                  child: const Text('Lưu'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
