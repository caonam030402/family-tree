import 'package:flutter/material.dart';

class CreateEventPage extends StatefulWidget {
  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  String selectedFamily = '';
  bool hasFamily = false;
  String selectedEventType = '';
  bool hasEventType = false;
  String selectedRepeat = '';
  bool hasRepeat = false;
  TextEditingController eventTypeController = TextEditingController();
  TextEditingController repeatController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = selectedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF0),
        appBar: AppBar(
          backgroundColor: Color(0xFFE4A11B),
          title: Text('Ta sự kiện'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Tên Sự Kiện',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: eventNameController,
                    decoration: const InputDecoration(
                      labelText: 'Nhập tên sự kiện',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Ngày',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: dateController,
                    decoration: InputDecoration(
                      labelText: 'Chọn ngày',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Thời Gian',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: timeController,
                    decoration: const InputDecoration(
                      labelText: 'Chọn thời gian',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Gia Phả',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: DropdownButtonFormField(
                    value: hasFamily ? 'Lê Hoàng' : 'Lê Mai',
                    // 'Họ Võ' can be the default value
                    onChanged: (value) {
                      setState(() {
                        hasFamily = value == 'Lê Hoàng';
                        hasFamily = value == 'Hàng năm';
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: 'Lê Hoàng',
                        child: Text('Lê Hoàng'),
                      ),
                      DropdownMenuItem(
                        value: 'Lê Mai',
                        child: Text('Lê Mai'),
                      ),
                      DropdownMenuItem(
                        value: 'Họ Võ',
                        child: Text('Họ Võ'),
                      ),
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Loại sự kiện',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            color: Colors.white,
                            child: DropdownButtonFormField(
                              value: hasEventType ? 'Giỗ' : 'Họp họ',
                              //'Khác' can be the default value
                              onChanged: (value) {
                                setState(() {
                                  hasEventType = value == 'Giỗ';
                                  hasEventType = value == 'Họp họ';
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  value: 'Giỗ',
                                  child: Text('Giỗ'),
                                ),
                                DropdownMenuItem(
                                  value: 'Họp họ',
                                  child: Text('Họp họ'),
                                ),
                                DropdownMenuItem(
                                  value: 'Khác',
                                  child: Text('Khác'),
                                ),
                              ],
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Lặp Lại',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            color: Colors.white,
                            child: DropdownButtonFormField(
                              value: hasRepeat ? 'Hàng tháng ' : 'Hàng năm',
                              //'Không' can be the default value
                              onChanged: (value) {
                                setState(() {
                                  hasRepeat = value == 'Hàng tháng';
                                  hasRepeat = value == 'Hàng năm';
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  value: 'Hàng tháng',
                                  child: Text('Hàng tháng'),
                                ),
                                DropdownMenuItem(
                                  value: 'Hàng năm',
                                  child: Text('Hàng năm'),
                                ),
                                DropdownMenuItem(
                                  value: 'Không',
                                  child: Text('Không'),
                                ),
                              ],
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Địa Điểm Diễn Ra',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: locationController,
                    decoration: const InputDecoration(
                      labelText: 'Nhập địa chỉ',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Note',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    controller: noteController,
                    decoration: const InputDecoration(
                      labelText: 'Nhập ghi chú',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFE4A11B))),
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    createEvent();
                  },
                  child: const Text('Lưu'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createEvent() {
    // Xử lý tạo sự kiện dựa trên dữ liệu từ các trường nhập liệu
    String eventName = eventNameController.text;
    String date = dateController.text;
    String time = timeController.text;
    String family = hasFamily ? selectedFamily : 'Họ Võ';
    String eventType = hasEventType ? selectedEventType : 'Khác';
    String repeat = hasRepeat ? selectedRepeat : 'Không';
    String location = locationController.text;
    String note = noteController.text;

    // In ra console hoặc xử lý dữ liệu tùy ý
    print('Tên Sự Kiện: $eventName');
    print('Ngày: $date');
    print('Thời Gian: $time');
    print('Gia Tộc: $family');
    print('Loại sự kiện: $eventType');
    print('Lặp lại: $repeat');
    print('Địa điểm diễn ra: $location');
    print('Note: $note');
  }
}
