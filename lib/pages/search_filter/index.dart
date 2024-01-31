import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  String selectedValue = 'Tất cả';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE4A11B),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.blueGrey,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: TextField(
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
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      color: Color(0xFFE4A11B),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (context) {
              return InkWell(
                onTap: () => {Scaffold.of(context).openEndDrawer()},
                child: Image(
                  image: AssetImage('lib/assets/iconFilter.png'),
                ),
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        width: 333,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xffE7E7E7)),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Bộ lọc tìm kiếm',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Quốc gia'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 282,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton<String>(
                            value: selectedValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Icon(Icons.arrow_drop_down),
                            ), // Icon mũi tên đi xuống
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              }
                            },
                            items: <String>[
                              'Tất cả',
                              'Việt Nam',
                              'Lào',
                              'Cam-pu-chia',
                              'Nhật Bản'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Icon(Icons.check, color: Colors.green),
                                    // Icon chọn (nếu cần)
                                    SizedBox(width: 8.0),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('Tỉnh thành'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 282,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton<String>(
                            value: selectedValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Icon(Icons.arrow_drop_down),
                            ), // Icon mũi tên đi xuống
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              }
                            },
                            items: <String>[
                              'Tất cả',
                              'Việt Nam',
                              'Lào',
                              'Cam-pu-chia',
                              'Nhật Bản'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Icon(Icons.check, color: Colors.green),
                                    // Icon chọn (nếu cần)
                                    SizedBox(width: 8.0),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('Huyện/ quận'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 282,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton<String>(
                            value: selectedValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Icon(Icons.arrow_drop_down),
                            ), // Icon mũi tên đi xuống
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              }
                            },
                            items: <String>[
                              'Tất cả',
                              'Việt Nam',
                              'Lào',
                              'Cam-pu-chia',
                              'Nhật Bản'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Icon(Icons.check, color: Colors.green),
                                    // Icon chọn (nếu cần)
                                    SizedBox(width: 8.0),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('Xã/ phường'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 282,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton<String>(
                            value: selectedValue,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Icon(Icons.arrow_drop_down),
                            ), // Icon mũi tên đi xuống
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              }
                            },
                            items: <String>[
                              'Tất cả',
                              'Việt Nam',
                              'Lào',
                              'Cam-pu-chia',
                              'Nhật Bản'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    Icon(Icons.check, color: Colors.green),
                                    // Icon chọn (nếu cần)
                                    SizedBox(width: 8.0),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 30,
                          color: Colors.black,
                        ),
                        Text('Số lượng thành viên'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 37,
                              width: 42,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text('< 20'),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 37,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text('20 - 50'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 37,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text('50 - 100'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 37,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text('> 100'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Không hiển thị kết quả'),
                SizedBox(height: 50,),
                Center(child: Image(image: AssetImage('lib/assets/notfound.png')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
