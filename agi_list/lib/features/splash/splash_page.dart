import 'package:agi_list/core/const/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:agi_list/core/const/app_theme.dart';
import 'package:splashscreen/splashscreen.dart';

import '../step/step_page.dart';

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
                          "agiList",
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
          

