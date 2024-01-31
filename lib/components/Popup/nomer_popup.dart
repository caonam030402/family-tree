import 'package:flutter/material.dart';

class NomerAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: <Widget>[
        Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0,top: 20,bottom: 20),
                        child: Image.network('https://i.imgur.com/bNRnG7S.png'),
                      ),
                      Text(
                        'BỔ NHIỆM',
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20,right:20,bottom: 20),
                        child: Text(
                          'Bổ nhiệm cho Võ Thị Thu Thúy toàn quyền quyết định về quản lý và điều chỉnh những thay đổi trong gia tộc',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF29B112)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(left: 43,right: 43,top: 16,bottom: 16),
                                  primary: Colors.white,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: BorderSide(color: Color(0xFFE4A11B)),
                                  ),
                                ),
                                child: Text(
                                  'Trở lại',
                                  style: TextStyle(color: Color(0xFFE4A11B)),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(left: 43,right: 43,top: 16,bottom: 16),
                                primary: Colors.white,
                                backgroundColor: Color(0xFFE4A11B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Color(0xFFE4A11B)),
                                ),
                              ),
                              child: Text('Đồng ý'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 260,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Image.network('https://i.imgur.com/nAGIGvM.png'),
              ),
            )
          ],
        )
      ],
    );
  }
}
