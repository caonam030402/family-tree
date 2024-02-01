import 'package:family_tree/configs/app_routes.dart';
import 'package:flutter/material.dart';

class DetailTreePage extends StatelessWidget {
  const DetailTreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE4A11B),
        title: const Text(
          'Thông tin phả hệ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Card(
              shape: const RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.chat);
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/images/Group 758532905.png'),
                              const SizedBox(width: 10.0),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          radius: 60.0,
                          backgroundImage:
                              AssetImage('assets/images/Ellipse 3.png'),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Group 758532772.png'),
                            const SizedBox(width: 10.0),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tộc Phạm - Phạm Quang',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            height: 20.92 / 18.0,
                            color: Color(0xFF464647),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Rectangle 23969.png',
                          width: 25.0,
                          height: 25.0,
                        ),
                        const SizedBox(width: 5.0),
                        const Text(
                          '20 thành viên',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 25.0),
                        const Text('ID : 77nh'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            height: 250,
            width: 800,
            child: Card(
              shape: const RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Thông tin",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                              height: 21.78 / 12.0,
                              color: Color(0xFF464647)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/blur.png',
                              width: 25.0,
                              height: 25.0,
                            ),
                            const SizedBox(width: 10.0),
                            const Text(
                              "Người tạo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            const SizedBox(width: 15.0),
                            const Text(
                              "Thái Thị Hoài",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/bi_calendar2-date.png',
                              width: 25.0,
                              height: 25.0,
                            ),
                            const SizedBox(width: 10.0),
                            const Text(
                              "Ngày tạo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            const SizedBox(width: 17.0),
                            const Text(
                              "13/12/2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Vector.png',
                              width: 25.0,
                              height: 25.0,
                            ),
                            const SizedBox(width: 10.0),
                            const Text(
                              "Địa chỉ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  height: 21.78 / 12.0,
                                  color: Color(0xFF0D123C)),
                            ),
                            const SizedBox(width: 29.0),
                            const SizedBox(
                              width: 200,
                              child: Text(
                                "Quy Thiện, Hải Quy, Hải Lăng, Quảng Trị, Việt Nam",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    height: 21.78 / 12.0,
                                    color: Color(0xFF0D123C)),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Card(
              shape: const RoundedRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Tiểu sử",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                              height: 21.78 / 12.0,
                              color: Color(0xFF464647)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: const Text(
                            "Dòng họ có từ lâu đời. Hình thành vào năm 1220. Được hình thành tại tỉnh Quảng Trị. Người đúng đầu gia tộc là cụ ông Phạm Quang Sáng, đã hưởng thọ 98 tuổi.",
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            height: 100,
            width: 800,
            child: const Card(
              shape: RoundedRectangleBorder(),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 1.0),
                        Text(
                          "Cây phả hệ",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              height: 21.78 / 12.0,
                              color: Color(0xFFDF9500)),
                        ),
                        Text(
                          "Xét duyệt",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              height: 21.78 / 12.0,
                              color: Color(0xFF0D123C)),
                        ),
                        SizedBox(height: 1.0),
                      ],
                    ),
                    SizedBox(height: 15.0)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 60.0),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            height: 100,
            width: 800,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Group 758532780.png',
                ),
                const SizedBox(width: 10.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
