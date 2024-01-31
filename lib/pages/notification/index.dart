import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Thông báo'),
          centerTitle: true,
          backgroundColor: Color(0xFFE4A11B)
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Image.asset(
                'lib/assets/1.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title:
              Text('Yêu cầu xác định danh tính của bạn đã được chấp nhận'),
              subtitle: Text('20 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/2.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title:
              Text('Bạn đã được Võ Minh Hoàng Đức bổ nhiệm quyền quản trị'),
              subtitle: Text('23 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/3.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title: Text('Có tin nhắn mới rồi vào đọc ngay nhé'),
              subtitle: Text('20 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/4.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title: Text(
                  'Phả hệ Thái - Thái Văn có sự kiện họp họ vào 14:30 phút ngày 20/12/2023'),
              subtitle: Text('12 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/5.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title: Text('Hôm nay là sinh nhật của Võ Hoàng Đức'),
              subtitle: Text('20 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/3.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title: Text('Có tin nhắn mới rồi vào đọc ngay nhé'),
              subtitle: Text('20 phút trước')),
          ListTile(
              leading: Image.asset(
                'lib/assets/1.png',
                width: 42.0, // Set the width as per your design
                height: 42.0, // Set the height as per your design
              ),
              title:
              Text('Yêu cầu xác định danh tính của bạn đã được chấp nhận'),
              subtitle: Text('20 phút trước')),
        ],
      ),
    );
  }
}
