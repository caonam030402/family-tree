import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  final Color color;
  final String name;
  final String image;
  final String date;
  final String gender;
  const Person({
    Key? key,
    required this.color,
    required this.name,
    required this.image,
    required this.date,
    required this.gender,
  }) : super(key: key);

  @override
  _MyCustomTabBarState createState() => _MyCustomTabBarState();
}

class _MyCustomTabBarState extends State<Person> {

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
                    color: widget.color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 18,
                              width: 18,
                              child: Image.network('https://i.imgur.com/x94JSjP.png',fit: BoxFit.cover,)),
                          Container(
                              height: 18,
                              width: 18,
                              child: Image.network(widget.gender,fit: BoxFit.cover,)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 70,
                        child: Text(
                          widget.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0D113B),
                            fontSize: 10,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.20,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        widget.date,
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
                width: 67.83,
                height: 67.83,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: OvalBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                  ),
                ),
                child: Image.network(widget.image,fit:BoxFit.cover),
              ),
            ]),
          ),
        ],
      ),
      ),
    );
  }
}