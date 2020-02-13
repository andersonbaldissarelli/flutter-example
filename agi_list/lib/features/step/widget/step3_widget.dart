import 'package:agi_list/core/const/app_colors.dart';
import 'package:agi_list/core/const/app_dimens.dart';
import 'package:agi_list/core/const/app_text.dart';
import 'package:agi_list/core/const/app_theme.dart';
import 'package:agi_list/features/login/login_page.dart';
import 'package:agi_list/features/login/widget/login_form.dart';
import 'package:flutter/material.dart';

class Step3Page extends StatefulWidget {
  @override
  _Step3PageState createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
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
              height: 40,
            ),
            Container(
              height: 60,
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
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Icon(Icons.arrow_forward_ios,
                              color: AppColors.white),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginForm()));
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
