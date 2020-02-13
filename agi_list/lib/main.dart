import 'package:agi_list/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFA1CCB8),
      ),
      home: SplashPage(),
    );
  }
}
