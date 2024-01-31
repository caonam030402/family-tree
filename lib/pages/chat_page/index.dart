import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/giapha.jpg",
              width: 30,
              height: 15,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gia phả Nguyễn Hồng- Phan Anh",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Cùng nhau trò chuyện để thêm gắn kết",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(child: Text("CN LÚC 23:45")),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/giapha.jpg",
                        width: 60,
                        height: 60,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Text("Hello cả nhà!"),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Text("Mọi người khỏe hết không"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Chị khỏe em nhé")),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/giapha.jpg",
                        width: 60,
                        height: 60,
                      ),
                      Container(
                        child: Text("Thúy này học hành sao rồi em"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Hihi"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Dạ em gần ra trường rồi chị 3"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text(
                              "Cuối tuần em về mọi người sang nhà em làm lẩu ăn"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Nhớ mọi người quá à huhu"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/giapha.jpg",
                        width: 60,
                        height: 60,
                      ),
                      Text("Chúc mừng thúy nha, giỏi quá, em gửi STK"),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Úi, hạnh phúc quá ạ"),
                        ),
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("Dạ 5110950710"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text("BIDV Phạm Đình Phong"),
                        ),
                        Column(
                          children: [
                            Center(child: Text("CN LÚC 23:45")),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/giapha.jpg",
                                  width: 60,
                                  height: 60,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Text("Hello cả nhà!"),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Text("Mọi người khỏe hết không"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                    child: Text("Chị khỏe em nhé")),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(

            children: [

              Expanded(
                flex: 2,
                child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.camera_alt),
                    Icon(Icons.image_outlined),
                    Icon(Icons.mic_rounded),
                  ],
                ),
              ),

              Expanded(

                flex: 8,
                child: TextField(

                  decoration: InputDecoration(
                    hintText: 'Nhắn tin',
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
