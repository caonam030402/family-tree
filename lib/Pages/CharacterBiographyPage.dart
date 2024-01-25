import 'package:flutter/material.dart';
import 'package:genealogy/Pages/EventPage.dart';

class CharacterBiographyPage extends StatefulWidget {
  const CharacterBiographyPage({super.key});

  @override
  State<CharacterBiographyPage> createState() => _CharacterBiographyPageState();
}

class _CharacterBiographyPageState extends State<CharacterBiographyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color(0xFFE4A11B),
        title: Text('Gia phả của tôi'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Bạn đang làm thành viên của 2 gia phả',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 16),
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EventPage(),));
                },
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
