import 'package:flutter/material.dart';

import '../../../components/Person/person.dart';
import '../../../components/Person/u_person.dart';


class MyParent extends StatefulWidget {
  @override
  _MyCustomTabBarState createState() => _MyCustomTabBarState();
}

class _MyCustomTabBarState extends State<MyParent> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
      ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          A_Person(color: Color(0xFF12B048),),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Stack(
                                children: [Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: 62,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFFA4A2A2),
                                      ),
                                    ),
                                  ),
                                ),
                                  Container(
                                    margin: EdgeInsets.only(left: 25,),
                                    width: 14,
                                    height: 14,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFD9D9D9),
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(Icons.link, size: 13,),

                                  ),
                                ]
                            ),
                          ),
                          A_Person(color: Color(0xFFDD5920),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Person(name: 'Phạm Thị Ngọc Ánh',color: Colors.white,date:'22/07/2001',image: 'https://i.imgur.com/cqrsKsA.png',gender: 'https://i.imgur.com/JoUuILL.png',),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 205,
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 75,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFA4A2A2),
                        ),
                      ),
                    ),
                  ),

                )

              ],
            )
          ]
      ),
    );
  }
}
