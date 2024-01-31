import 'package:flutter/material.dart';

class A_Person extends StatefulWidget {
  final Color? color;

  const A_Person({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  _MyCustomTabBarState createState() => _MyCustomTabBarState();
}

class _MyCustomTabBarState extends State<A_Person> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child:  Container(
                  width: 114.17,
                  height: 80.26,
                  decoration: ShapeDecoration(
                    color: Color(0xFFB3B1B0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:30,left: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              child: Text(
                                'Cập nhật',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0D113B),
                                  fontSize: 12,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.20,
                                ),
                              ),
                            ),
                            Image.network('https://i.imgur.com/ztAf51O.png'),
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),
                      Text(
                        '',
                        style: TextStyle(
                          color: Color(0xFF464647),
                          fontSize: 10,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          height: 0.15,
                        ),
                      )
                    ],
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 70,
                height: 70,
                decoration: ShapeDecoration(
                  color: widget.color != null ? widget.color:Color(0xFFD9D9D9),
                  shape: OvalBorder(
                    side: BorderSide(width: 2, color: Color(0xFFD9D9D9)),
                  ),
                ),
                child: Image.network('https://i.imgur.com/DKPvJv3.png',fit:BoxFit.cover),
              ),
              widget.color != null
                  ? Container(
                margin: EdgeInsets.only(left: 70, top: 5),
                width: 17,
                height: 17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://i.imgur.com/NF2e2dQ.png',
                  fit: BoxFit.cover,
                ),
              ) : Container(),

            ]),
          ),
        ],
      ),
      ),
    );
  }
}