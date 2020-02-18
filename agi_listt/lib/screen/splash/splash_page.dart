import 'package:agi_listt/screen/step/step_page.dart';
import 'package:agi_listt/style/app_dimens.dart';
import 'package:agi_listt/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 10,
            gradientBackground: AppTheme.primaryGradient,
            navigateAfterSeconds: StepPage(),
            loaderColor: Colors.transparent,
          ),
          Center(
            child: Text(
              "agiListt",
              style: TextStyle(
                color: Colors.white,
                fontSize: AppDimens.largest,
                fontFamily: "WorkSansSemiBold",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
