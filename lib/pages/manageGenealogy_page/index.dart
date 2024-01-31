import 'package:family_tree/pages/createInfo_page/index.dart';
import 'package:family_tree/pages/detailEvent_page/index.dart';
import 'package:flutter/material.dart';


class manageGenealogy_page extends StatelessWidget {
  const manageGenealogy_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE4A11B),
        title: const Center(
          child: Text(
            "Phả Hệ Của Tôi",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 0.09,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailEvent(),));
          },
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Bạn đang là thành viên của 2 phả hệ',
              style: TextStyle(
                color: Color(0xFF200C59),
                fontSize: 14,
                fontStyle: FontStyle.italic,
                // fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateInfo(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/giapha.jpg",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "Dòng họ Mèo Ngớ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF464647),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.family_restroom),
                          title: Text(
                            "300 thành viên",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF7F7F7F)),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.place),
                          title: Text(
                            "Bình Sơn, Quảng Ngãi, Việt Nam",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF7F7F7F)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateInfo(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/giapha1.jpg",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const ListTile(
                          title: Text(
                            "Dòng họ Mèo Buồn",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF464647),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.family_restroom),
                          title: Text(
                            "340 thành viên",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF7F7F7F)),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.place),
                          title: Text(
                            "Bình Sơn, Quảng Ngãi, Việt Nam",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF7F7F7F)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
