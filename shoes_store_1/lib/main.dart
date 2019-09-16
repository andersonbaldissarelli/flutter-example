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
  int _currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Image.asset(
      "assets/store.png",
      width: 30.0,
      height: 30.0,
    ),
    Icon(
      CustomIcons.search,
      size: 30.0,
    ),
    Icon(
      CustomIcons.favorite,
      size: 30.0,
    ),
    Icon(
      CustomIcons.cart,
      size: 30.0,
    ),
    Image.asset("assets/profile.png", width: 30.0, height: 30.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
        child: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child:
                    Image.asset("assets/logo.png", width: 72.0, height: 53.0),
              ),
            ),
            ProductCard(0xFFfaecfb, "assets/shoes_01.png",
                "Air Zoom Structure 22", "R\$ 499", "R\$ 349"),
            SizedBox(
              height: 28.0,
            ),
            ProductCard(0xFFf8e1da, "assets/shoes_02.png",
                "Air Zoom Structure 22", "R\$ 599", "R\$ 449")
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.065),
              offset: Offset(0.0, -3.0),
              blurRadius: 8.0)
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: bottomNavItem(item, index == _currentIndex),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                      color: Colors.black12.withOpacity(.02),
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0)
                ]
              : []),
      child: item,
    );
