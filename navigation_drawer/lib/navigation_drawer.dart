import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Navigation Drawer"),
          elevation:
              debugDefaultTargetPlatformOverride == TargetPlatform.android
                  ? 5.0
                  : 0.0),
      drawer: Drawer(),
    );
  }
}
