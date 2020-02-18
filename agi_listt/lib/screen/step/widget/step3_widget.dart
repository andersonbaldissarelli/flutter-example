import 'package:agi_listt/screen/login/login_page.dart';
import 'package:agi_listt/screen/login/root_page.dart';
import 'package:agi_listt/service/auth/auth.dart';
import 'package:agi_listt/style/app_colors.dart';
import 'package:agi_listt/style/app_dimens.dart';
import 'package:agi_listt/style/app_text.dart';
import 'package:agi_listt/style/app_theme.dart';
import 'package:flutter/material.dart';

class Step3Widget extends StatefulWidget {
  @override
  _Step3WidgetState createState() => _Step3WidgetState();
}

class _Step3WidgetState extends State<Step3Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: AppColors.white,
        padding: EdgeInsets.only(
          top: 30,
          left: 45,
          right: 45,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: AppDimens.topStep,
                  left: AppDimens.small,
                  right: AppDimens.small,
                  bottom: AppDimens.medium),
              child: Container(
                width: MediaQuery.of(context).size.width * 1.1,
                height: MediaQuery.of(context).size.width * 0.6,
                color: AppColors.white,
                child: Image.asset(
                  'assets/image/step3.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(AppText.welcome),
                    Padding(
                      padding: const EdgeInsets.all(AppDimens.small),
                      child: Text(AppText.welcomeDescription),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    AppTheme.splashGradientEnd,
                    AppTheme.splashGradientStart,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Começar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios,
                            size: 16, color: AppColors.white),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RootPage(auth: Auth()),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
