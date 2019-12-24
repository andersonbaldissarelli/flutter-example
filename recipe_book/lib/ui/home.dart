import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 24.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Browse"),
                Text("Recommended"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
