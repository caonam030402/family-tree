import 'package:family_tree/configs/app_routes.dart';
import 'package:family_tree/constants/path_images.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE4A11B),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Sự kiện'),
              SizedBox(width: 100),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.createEvent);
                  },
                  child: Text('Tạo mới',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400))),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 12, 15, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 88,
                width: 381,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF6600).withOpacity(0.3),
                      Color(0xEF9356DB),
                      Color(0xFF9954BF),
                    ],
                    stops: [1.0, 0.86, 0.75],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Giờ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text('Ngày',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          Text('Tháng',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          Text('Năm',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27, top: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2:01',
                              style: TextStyle(
                                  color: Color(0xffE4A11B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text('31',
                                style: TextStyle(
                                    color: Color(0xffE4A11B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: 85,
                            ),
                            Text('1',
                                style: TextStyle(
                                    color: Color(0xffE4A11B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: 85,
                            ),
                            Text('2024',
                                style: TextStyle(
                                    color: Color(0xffE4A11B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Giáp Tý',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Text('Mậu Dần',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          Text('Ất Mão',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          Text('Quý Mão',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TableCalendar(
                  focusedDay: today,
                  firstDay: DateTime.utc(2000, 10, 16),
                  lastDay: DateTime.utc(2050, 3, 14),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: 381,
                height: 339,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sự kiện',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 74,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(PathImage.im_people2)),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Họ Võ Hồng',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text('Giổ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('12:30 22/10/2023'),
                                    Text('Giổ ông nội 6'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 74,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(PathImage.im_people2)),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Họ Võ Hồng',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text('Giổ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('12:30 22/10/2023'),
                                    Text('Giổ ông nội 6'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 74,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(PathImage.im_people3)),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Họ Võ Hồng',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text('Giổ',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('12:30 22/10/2023'),
                                    Text('Giổ ông nội 6'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
