import 'package:flutter/material.dart';

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
              height: 320.0,
              decoration: BoxDecoration(
                  color: Color(0xFFfaecfb),
                  borderRadius: BorderRadius.circular(20.00),
                  border: Border.all(
                      color: Colors.grey.withOpacity(.3), width: .2)),
            )
          ],
        ),
      ),
    );
  }
}
