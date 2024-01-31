import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/Popup/confirm._popup.dart';
import '../add_parent_page/index.dart';
import 'package:url_launcher/url_launcher.dart';


class Detail extends StatefulWidget  {
  @override
  State<Detail> createState() => _IndexState();
}

class _IndexState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white10,
        child: ListView(
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
                                      MaterialPageRoute(builder: (context) => Index1()),
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
                          'Thông tin thành viên',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 20),
                              child: Image.network('https://i.imgur.com/KY5ctZa.png'),
                            ),
                          ],
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
                            child: Image.network('https://i.imgur.com/jNwwvXd.png',  fit: BoxFit.cover,)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Võ Thị Thu Thúy',
                            style: TextStyle(
                              color: Color(0xFF464647),
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              height: 0.11,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '22/07/2001',
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
                              Image.network('https://i.imgur.com/0ubrYXW.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 5),
                                child: Text(
                                  'Nữ',
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
              height: 40,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Image.network('https://i.imgur.com/es8lavU.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 60),
                        child: Text('Yêu cầu xác nhận danh tính'),
                      ),
                      TextButton(onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return ConfirmationDialog();
                        });
                      }
                          , style: TextButton.styleFrom(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                            primary: Colors.white,
                            backgroundColor: Color(0xFF92D45D),// Màu nền của nút
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // Độ cong của đường biên
                              side: BorderSide(color: Color(0xFF92D45D)), // Đường biên màu xanh
                            ),
                          ), child: Text('Đây là tôi')),
                    ],
                  )
              ),
            ),
            Container(
              width: 375,
              decoration: BoxDecoration(color: Colors.white),
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network('https://i.imgur.com/zTMaNyA.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Thông tin chung',style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 350,
                          padding: EdgeInsets.only(top: 10,left: 15),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Võ Thị Thu Thúy, ',
                                  style: TextStyle(fontWeight: FontWeight.bold,height: 1.5), // Set the color for this part
                                ),
                                TextSpan(
                                  text: 'sinh ngày 22/07/2001 ,  giới tính nữ, quê ở  xóm Hòa Tây, thôn Phước Hòa, xã Bình Trị, huyện Bình Sơn tỉnh Quảng Ngãi.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey,height: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text(
                        'Tiểu sử',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 20,top: 5),
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10,left: 10),
                        width: 350,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ngày 22 tháng 12 năm 1944, ',
                                style: TextStyle(color: Colors.grey,fontSize: 12,height: 1.5,),
                              ),
                              TextSpan(
                                text: 'theo hướng dẫn của Hồ Chí Minh ',
                                style: TextStyle(color: Colors.blue,fontSize: 12,height: 1.5),
                                recognizer:TapGestureRecognizer()
                                  ..onTap = () async{
                                    var url = "https://vi.wikipedia.org/wiki/H%E1%BB%93_Ch%C3%AD_Minh";
                                    if (await canLaunch(url)) {
                                      // Launch the URL
                                      await launch(url);
                                    } else {
                                      // Handle the case where the URL can't be launched
                                      throw "Could not launch $url";
                                    }
                                  },
                              ),
                              TextSpan(
                                  text: 'ông thành lập đội Việt Nam Tuyên truyền Giải phóng quân tại chiến khu Trần Hưng Đạo với ',
                                  style: TextStyle(fontSize: 12,color: Colors.grey,height: 1.5)
                              ),
                              TextSpan(
                                  text: '34 người, ',
                                  style: TextStyle(fontSize: 12,color: Colors.red,height: 1.5)
                              ),
                              TextSpan(
                                  text: 'được trang bị 2 súng thập (một loại súng ngắn), 17 súng trường, 14 súng kíp và 1 súng máy. ',
                                  style: TextStyle(fontSize: 12,color: Colors.grey,height: 1.5)
                              ),
                              TextSpan(
                                text: 'Đây là tổ chức tiền thân của Quân đội nhân dân Việt Nam.',
                                style: TextStyle(color: Colors.blue,fontSize: 12,height: 1.5),
                                recognizer:TapGestureRecognizer()
                                  ..onTap = () async{
                                    var url = "https://vi.wikipedia.org/wiki/H%E1%BB%93_Ch%C3%AD_Minh";
                                    if (await canLaunch(url)) {
                                      // Launch the URL
                                      await launch(url);
                                    } else {
                                      // Handle the case where the URL can't be launched
                                      throw "Could not launch $url";
                                    }
                                  },
                              ),
                            ],
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5,left: 10),
                        width: 350,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ngày 25 tháng 12 năm 1944, ông đã chỉ huy đội quân này lập chiến công đầu tiên là tập kích diệt gọn hai đồn Phai Khắt và Nà Ngần.',
                                style: TextStyle(color: Colors.grey,fontSize: 12,height: 1.5,),
                              ),
                            ],
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5,left: 10),
                        width: 350,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ngày 14 tháng 8 năm 1945, ',
                                style: TextStyle(color: Colors.grey,fontSize: 12,height: 1.5,),
                              ),
                              TextSpan(
                                text: 'ông trở thành uỷ viên Ban chấp hành Trung ương Đảng Cộng sản Đông Dương ',
                                style: TextStyle(color: Colors.blue,fontSize: 12,height: 1.5),
                                recognizer:TapGestureRecognizer()
                                  ..onTap = () async{
                                    var url = "https://vi.wikipedia.org/wiki/H%E1%BB%93_Ch%C3%AD_Minh";
                                    if (await canLaunch(url)) {
                                      // Launch the URL
                                      await launch(url);
                                    } else {
                                      // Handle the case where the URL can't be launched
                                      throw "Could not launch $url";
                                    }
                                  },
                              ),
                              TextSpan(
                                  text: ' sau đó là ủy viên Thường vụ Trung ương, tham gia Ủy ban Khởi nghĩa toàn quốc.',
                                  style: TextStyle(fontSize: 12,color: Colors.grey,height: 1.5)
                              ),
                            ],
                          ),
                        )
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Text(
                            'Thành tựu',
                            style: TextStyle(
                              color: Color(0xFF464647),
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 20,top: 5),
                          height: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Text(
                            'Huân chương',
                            style: TextStyle(
                              color: Color(0xFF464647),
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('Huân chương Huân chương Sao Vàng (20/08/1992)[95]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('2 Huân chương Hồ Chí Minh (1950, 1979)[96]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('2 Huân chương Quân công hạng Nhất[97][98]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('Huân chương Kháng chiến hạng Nhất',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('6 Huân chương Chiến thắng hạng Nhất.[96]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('Huân chương Chiến sỹ vẻ vang hạng Nhất, Nhì, Ba',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('Huy chương Quân kỳ Quyết Thắng',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Text(
                            'Huy hiệu',
                            style: TextStyle(
                              color: Color(0xFF464647),
                              fontSize: 14,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 15),
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 5,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('Huy hiệu 70 năm tuổi Đảng (27/10/2010)[99]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              'Các danh hiệu khác',
                              style: TextStyle(
                                color: Color(0xFF464647),
                                fontSize: 14,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Icon(Icons.circle,size: 5,color: Colors.grey,),
                                ),
                                Container(
                                  width: 350,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text('Chủ tịch danh dự Hội Sử học Việt Nam trong 4 kỳ đại hội, từ đại hội lần thứ II tháng 5 năm 1988 đến đại hội V năm 2005.[100][101]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.circle,size: 5,color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Chủ tịch danh dự Hội Cựu chiến binh Việt Nam.[102]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.circle,size: 5,color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Chủ tịch danh dự Hội Khuyến học Việt Nam.[103]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.circle,size: 5,color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Chủ tịch danh dự Hội Khoa học Kỹ thuật Việt Nam.[104]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.circle,size: 5,color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Chủ tịch danh dự Hội Cựu giáo chức Việt Nam.[105]',style: TextStyle(fontSize: 12,color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
