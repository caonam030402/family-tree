import 'package:family_tree/pages/chat_page/index.dart';
import 'package:family_tree/pages/createGenealogy_page/index.dart';
import 'package:family_tree/pages/manageGenealogy_page/index.dart';
import 'package:flutter/material.dart';


class CreateInfo extends StatefulWidget {
  const CreateInfo({super.key});
  @override
  State<CreateInfo> createState() => _CreateInfoState();
}

class _CreateInfoState extends State<CreateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            120,
          ),
          child: Container(
            height: 90,
            color: Colors.orangeAccent,
            child: Container(
            margin: EdgeInsets.only( right: 10),

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const manageGenealogy_page(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text("Thông tin phả hệ"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const createGenealogy_page(),
                          ),
                        );
                      },
                      child: Text("Chỉnh sửa"),
                    )
                  ]),
            ),
          )),
      backgroundColor: const Color(0xFFF5FDFB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.greenAccent,
                margin: EdgeInsets.only(left: 20),
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.greenAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatScreen(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.chat,
                          color: Colors.white,
                        )),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(
                      'assets/images/giapha.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Tộc Phạm - Phạm Quang"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text("20 thành viên"),
                      ),
                      Container(
                        child: Text(
                          "ID: 77nh",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Row(children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.share_sharp)),
                  Text("Chia sẻ")
                ]),
              )
            ],
          ),
          Column(
            children: [
              Text("Thông tin"),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Người tạo")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Thái Thị Hoài"))
                ],
              ),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Ngày tạo")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("13/12/2022"))
                ],
              ),
              Row(
                children: [
                  Row(children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                    Text("Địa chỉ")
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Bình Lâm, Hiệp Đức, Quảng Nam"))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text("Tiểu sử"),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Dòng họ có từ lâu đời. Hình thành vào năm 1220. Được hình thành tại tỉnh Quảng Trị. Người đúng đầu gia tộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.",
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),
                )
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cây phả hệ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text("Xét duyệt",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            margin: EdgeInsets.only(left: 160),
            child: Column(
              children: [
                Container(
                  child: GestureDetector(
                  
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(32),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              height: 500,
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 30, left: 10, right: 10),
                                            width: 60,
                                            height: 60,
                                            child: Image.asset(
                                                "assets/images/giapha.jpg"),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text("Võ Thị Thu Thúy"),
                                                Text("22/-7/2001"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 50, left: 10, right: 10),
                                        width: 90,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(45)),
                                            color: Colors.greenAccent),
                                        child: Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                            
                                            "Bổ nhiệm",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 160,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, right : 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(child: Column(children: [
                                          Image.asset('assets/images/addParent.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/addChildren.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/addSiblings.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, right : 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(child: Column(children: [
                                          Image.asset('assets/images/addWife.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/addHusband.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/link.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, right : 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(child: Column(children: [
                                          Image.asset('assets/images/unLink.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/recycle.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                       Container(child: Column(children: [
                                          Image.asset('assets/images/updateInfo.png', width: 69, 
                                          height: 73,),
                                        ]),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(child: 
                      Image.asset('assets/images/updateAvatar.png', width: 99, height: 123, scale: 1,)),
                     ),
                ),
                // Container(
                //     width: 120,
                //     height: 90,
                //     color: Colors.grey,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //       "Cập nhật",
                //       textAlign: TextAlign.center,
                //     ),
                //     Icon(
                //       Icons.update
                //     )
                //       ],
                //     ))
              ],
            ),
          )
         
        ],
      ),
    );
  }

  Widget _buildPageItem() {
    return InkWell(

        // child: Container(
        //   width: 177,
        //   height: 250,
        //   margin: EdgeInsets.only(left: 0, right: 6, top: 30, bottom: 30),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(12),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: Color(0x1F0C9359),
        //         blurRadius: 20,
        //         offset: Offset(0, 8),
        //         spreadRadius: 0,
        //       )
        //     ],
        //   ),
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 177,
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.only(
        //             topLeft: Radius.circular(12),
        //             topRight: Radius.circular(12),
        //           ),
        //           image: DecorationImage(
        //               fit: BoxFit.cover,
        //               image: AssetImage("images/hinh-anh-hoc-bai-nam-anime.jpg")
        //               // image: AssetImage(plant.imageUrl),
        //               ),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 16,
        //       ),
        //       Text(
        //         "abc",
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
