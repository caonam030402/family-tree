import 'package:flutter/material.dart';
import 'package:genealogy/Pages/HomeSearch.dart';

import 'CharacterBiographyPage.dart';
import 'EventPage.dart';
import 'Notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 242,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFE4A11B), Color(0xFFFFFFFF)],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('lib/assets/container1.png'),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 50,
                      left: 23,
                      child: ClipOval(
                          child: Image.asset(
                        'lib/assets/avt.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      )),
                    ),
                    Positioned(
                        top: 55,
                        left: 100,
                        child: Text(
                          'Xin chào',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontFamily: 'Manrope'),
                        )),
                    Positioned(
                        top: 80,
                        left: 100,
                        child: Text(
                          'Hồ Xuân Chiến',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                    Positioned(
                      top: 55,
                      right: 60,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 78,
                          height: 26,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 5, right: 5, bottom: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterBiographyPage(),));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE4A11B),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Tạo mới',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        right: 10,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),));
                          },
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 40,
                          ),
                        )),
                    Positioned(
                      right: 10,
                      top: 50,
                      child: ClipOval(
                        child: Container(
                          height: 20,
                          width: 20,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 50,
                      child: Container(
                        height: 45,
                        width: 324,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),

                                suffixIcon: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.search),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchHome(),));
                                        },
                                        child: Container(
                                          width: 31,
                                          height: 31,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE4A11B),
                                              borderRadius: BorderRadius.circular(50)
                                          ),
                                          child:
                                              Center(child: Icon(Icons.arrow_forward, color: Colors.white,)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        height: 210,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('lib/assets/cha4.png')),
                            ),
                            Text(
                              'Dòng họ Nguyễn Đông Tác',
                              textAlign: TextAlign.right,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('lib/assets/cha1.png')),
                                Text(
                                  '340 thanh vien',
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Row(
                                children: [
                                  Image(image: AssetImage('lib/assets/cha2.png')),
                                  Text('Binh Son, Quang Ngai'),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          height: 210,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(image: AssetImage('lib/assets/cha3.png')),
                                Text(
                                  'Tộc Nguyễn Vân',
                                  textAlign: TextAlign.right,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(image: AssetImage('lib/assets/cha1.png')),
                                    Text(
                                      '340 thanh vien',
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Row(
                                    children: [
                                      Image(image: AssetImage('lib/assets/cha2.png')),
                                      Text('Binh Son, Quang Ngai'),
                                    ]
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EventPage(),));
                      },
                    ),
                  ],
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
