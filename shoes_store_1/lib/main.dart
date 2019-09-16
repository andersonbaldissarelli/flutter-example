import 'package:flutter/material.dart';
import 'custom_icon.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        child: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child:
                    Image.asset("assets/logo.png", width: 72.0, height: 53.0),
              ),
            ),
            Container(
              width: 320.00,
              height: 270.0,
              decoration: BoxDecoration(
                  color: Color(0xFFfaecfb),
                  borderRadius: BorderRadius.circular(20.00),
                  border: Border.all(
                      color: Colors.grey.withOpacity(.3), width: .2)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Image.asset(
                    "assets/shoes_01.png",
                    width: 200.0,
                    height: 140.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Air Zoom Structure 22",
                      style: TextStyle(
                          color: Color(0xFF455a64),
                          fontSize: 22.0,
                          fontFamily: "Raleway")),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(CustomIcons.favorite),
                            onPressed: () {},
                          ),
                          Column(
                            children: <Widget>[
                              Text("599.00",
                                  style: TextStyle(
                                      color: Color(0xFFfeb0ba),
                                      fontSize: 13.0,
                                      fontFamily: "Helvetica")),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("R\$ 449",
                                  style: TextStyle(
                                      fontSize: 23.0, fontFamily: "Helvetica"))
                            ],
                          ),
                          IconButton(
                            icon: Icon(CustomIcons.cart),
                            onPressed: () {},
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
