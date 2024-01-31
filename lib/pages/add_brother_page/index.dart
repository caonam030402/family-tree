import 'package:flutter/material.dart';
import '../infoo_person_page/index.dart';
import 'Widget/brother.dart';

class Index extends StatefulWidget  {
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          color: Colors.white10,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 430,
                    height: 98,
                    decoration: BoxDecoration(
                      color: Color(0xFFE4A11B),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 34,
                                  height: 34,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Detail()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.arrow_back_ios,color: Colors.grey,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: Text(
                            'Thông tin phả hệ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.09,
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 70,
                          margin: EdgeInsets.only(top: 30),
                          child: GestureDetector(
                            onTap: (){
                            },
                            child: Text(
                              'Chỉnh sửa',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                height: 0.15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 375,
                height: 150,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 73,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFF7DD238),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.network('https://i.imgur.com/JalLQL2.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 5),
                                  child: Text(
                                    'Chat',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      height: 0.15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 15),
                              width: 86,
                              height: 86,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network('https://i.imgur.com/nWf4nGq.png',  fit: BoxFit.cover,)
                          ),
                          Text(
                            'Tộc Phạm - Phạm Quang',
                            style: TextStyle(
                              color: Color(0xFF464647),
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              height: 0.11,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Image.network('https://i.imgur.com/ZNhdgFJ.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  '20 thành viên',
                                  style: TextStyle(
                                    color: Color(0xFF0D113B),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 5),
                                child: Text(
                                  'ID : 77nh',
                                  style: TextStyle(
                                    color: Color(0xFF6F707D),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 0.15,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 30,
                            child: Row(
                              children: [
                                Image.network('https://i.imgur.com/iCzete1.png'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 5),
                                  child: Text(
                                    'Chia sẻ',
                                    style: TextStyle(
                                      color: Color(0xFF0D113B),
                                      fontSize: 12,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                      height: 0.15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 375,
                height: 154,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:10,left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Thông tin',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.network('https://i.imgur.com/KlyDZv9.png',color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5,top: 10),
                            child: Text(
                              'Người tạo',
                              style: TextStyle(
                                color: Color(0xFF0D113B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Thái Thị Hoài',
                              style: TextStyle(
                                color: Color(0xFF0D113B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                height: 0.15,
                                letterSpacing: 0.50,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.network('https://i.imgur.com/rv3KN4R.png',color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 15, right: 10),
                            child: Text(
                              'Ngày tạo',
                              style: TextStyle(
                                color: Color(0xFF0D113B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '13/12/2022',
                              style: TextStyle(
                                color: Color(0xFF0D113B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                height: 0.15,
                                letterSpacing: 0.50,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network('https://i.imgur.com/herusoV.png',color: Colors.grey,),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 15, right: 20, top: 15),
                            child: Text(
                              'Địa chỉ',
                              style: TextStyle(
                                color: Color(0xFF0D113B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Container(
                            width: 187,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5,left: 3),
                              child: Text(
                                'Bình Trị, Bình Sơn, Quảng Ngãi, Việt Nam',
                                style: TextStyle(
                                  color: Color(0xFF0D113B),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 375,
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10,bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tiểu sử',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 327,
                        child: Text(
                          'Dòng họ có từ lâu đời. Hình thành vào năm 1220. Được hình thành tại tỉnh Quảng Trị. Người đúng đầu gia tộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 12,
                            height: 1.5,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.50,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                child: TabBar(
                  labelColor: Color(0xFFE5AB29), // Màu chữ của tab đang được chọn
                  unselectedLabelColor: Colors.grey, // Màu chữ của tab chưa được chọn
                  indicatorColor: Color(0xFFE5AB29), // Màu đường chỉ mục khi chọn tab
                  tabs: [
                    Tab(
                      child: Text('Cây phả hệ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,),),
                    ),
                    Tab(
                      child: Text('Xét duyệt',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,),),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    MyBrother(),
                    Container(
                      child: Text('Content for xét duyệt'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
