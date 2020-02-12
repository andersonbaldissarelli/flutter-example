import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class StepPage extends StatefulWidget {
  @override
  _StepPageState createState() => _StepPageState();
}

class _StepPageState extends State<StepPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Carousel(
            images: [
              AssetImage('assets/image/step1.jpg'),
              AssetImage('assets/image/step2.jpg'),
              AssetImage('assets/image/step3.jpg')
            ],
            boxFit: BoxFit.contain,
            autoplay: false,
            dotColor: Colors.green,
            dotIncreasedColor: Colors.black,
            dotBgColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
