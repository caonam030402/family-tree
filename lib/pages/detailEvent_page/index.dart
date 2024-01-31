import 'package:flutter/material.dart';

class DetailEvent extends StatefulWidget {
  const DetailEvent({super.key});

  @override
  State<DetailEvent> createState() => _DetailEventState();
}

class _DetailEventState extends State<DetailEvent> {
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
              margin: EdgeInsets.only(left: 5, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => DetailEvent()));
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      "Sự kiện",
                      style: TextStyle(fontSize: 26),
                    ),
                    GestureDetector(
                      child: Text("Chỉnh sửa"),
                    )
                  ]),
            ),
          )),
      body: Container(
        color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Đám giỗ dòng tộc",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Image.asset("assets/images/event.png"),
                    ),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.people)),
                          Text("Ngày diễn ra: ")
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("13/12/2023"))
                      ],
                    ),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.timelapse)),
                          Text("Thời gian")
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("19:00"))
                      ],
                    ),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.people)),
                          Text("Giao phả")
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Tộc họ Võ"))
                      ],
                    ),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.location_on_outlined)),
                          Text("Địa điểm")
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Nhà ngọai"))
                      ],
                    ),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.note)),
                          Text("Note")
                        ]),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Nhớ đi đúng giờ để làm lễ",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
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
