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
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                child:
                    Image.asset("assets/logo.png", width: 72.0, height: 53.0),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300.0,
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
                    width: 270.0,
                    height: 170.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Air Zoom Structure 22",
                      style: TextStyle(fontSize: 25.0, fontFamily: "Raleway")),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                                      fontSize: 16.0,
                                      fontFamily: "Helvetica")),
                              SizedBox(
                                height: 12.0,
                              )
                            ],
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
