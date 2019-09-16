import 'package:flutter/material.dart';
import 'product_card.dart';
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
            ProductCard(0xFFfaecfb, "assets/shoes_01.png",
                "Air Zoom Structure 22 F", "R\$ 499", "R\$ 349"),
            SizedBox(
              height: 20.0,
            ),
            ProductCard(0xFFf8e1da, "assets/shoes_02.png",
                "Air Zoom Structure 22 M", "R\$ 599", "R\$ 449")
          ],
        ),
      ),
    );
  }
}
