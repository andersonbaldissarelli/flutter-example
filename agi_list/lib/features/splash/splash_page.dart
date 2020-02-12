import 'package:agi_list/features/step/step_page.dart';
import 'package:flutter/material.dart';
import 'package:agi_list/core/const/theme.dart' as Theme;
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 10,
            gradientBackground: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.Colors.splashGradientEnd,
                Theme.Colors.splashGradientStart
              ],
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated,
            ),
            navigateAfterSeconds: StepPage(),
            loaderColor: Colors.transparent,
          ),
          Center(
            child: Text(
              "agiList",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "WorkSansSemiBold",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
