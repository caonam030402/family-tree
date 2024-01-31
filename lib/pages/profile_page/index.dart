import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final color1 = const Color(0xffE4A11B);
  final color2 = const Color(0xffD0D0D0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F7),
      appBar: AppBar(
        title: const Text(
          'Trang cá nhân',
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: color1,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Thông tin của tôi',
                    style: TextStyle(
                        color: Color(0xff464647),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/image4.png'),
                            radius: 25,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Trần Thị Thủy',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff333334)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '0384305023',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffB1B1B1)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    'Tài khoản',
                    style: TextStyle(
                        color: Color(0xff464647),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/edit_profile');
                          },
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                    'assets/images/profile_image1.png'),
                                height: 28,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Chỉnh sửa thông tin cá nhân',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: color2,
                                              size: 16,
                                            ))
                                      ],
                                    ),
                                    const Divider(
                                      height: 0,
                                      thickness: 1,
                                      color: Color(0xffD8D2D2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/change_password');
                          },
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                    'assets/images/profile_image2.png'),
                                height: 28,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Đổi mật khẩu',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: color2,
                                              size: 16,
                                            ))
                                      ],
                                    ),
                                    const Divider(
                                      height: 0,
                                      thickness: 1,
                                      color: Color(0xffD8D2D2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/my_tree');
                          },
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                    'assets/images/profile_image3.png'),
                                height: 28,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Chia sẻ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: color2,
                                              size: 16,
                                            ))
                                      ],
                                    ),
                                    const Divider(
                                      height: 0,
                                      thickness: 1,
                                      color: Color(0xffD8D2D2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showBottomSheet(
                                elevation: 2.0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20))),
                                backgroundColor: const Color(0xffffffff),
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 225,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                'assets/images/profile_image7.png'),
                                            width: 67,
                                          ),
                                          const Text(
                                            'Bạn chắc chắn muốn đăng xuất?',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff464647)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 147,
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    style: ButtonStyle(
                                                        side: MaterialStatePropertyAll(
                                                            BorderSide(
                                                                color:
                                                                    color1))),
                                                    child: Text(
                                                      'Không',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: color1),
                                                    )),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              SizedBox(
                                                width: 147,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                color1)),
                                                    child: const Text(
                                                      'Có',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white),
                                                    )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                    'assets/images/profile_image4.png'),
                                height: 28,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Đăng xuất',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: color2,
                                              size: 16,
                                            ))
                                      ],
                                    ),
                                    const Divider(
                                      height: 0,
                                      thickness: 1,
                                      color: Color(0xffD8D2D2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showBottomSheet(
                                elevation: 2.0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20))),
                                backgroundColor: const Color(0xffffffff),
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 225,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                'assets/images/profile_image6.png'),
                                            width: 67,
                                          ),
                                          const Text(
                                            'Bạn muốn thực hiện xóa xóa tài khoản?',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff464647)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 147,
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    style: ButtonStyle(
                                                        side: MaterialStatePropertyAll(
                                                            BorderSide(
                                                                color:
                                                                    color1))),
                                                    child: Text(
                                                      'Không',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: color1),
                                                    )),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              SizedBox(
                                                width: 147,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                color1)),
                                                    child: const Text(
                                                      'Có',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white),
                                                    )),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                    'assets/images/profile_image5.png'),
                                height: 28,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Xóa tài khoản',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: color2,
                                              size: 16,
                                            ))
                                      ],
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
