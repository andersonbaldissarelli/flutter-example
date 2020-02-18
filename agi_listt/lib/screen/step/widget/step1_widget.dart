import 'package:agi_listt/screen/login/login_page.dart';
import 'package:agi_listt/service/auth/auth.dart';
import 'package:agi_listt/style/app_colors.dart';
import 'package:agi_listt/style/app_dimens.dart';
import 'package:agi_listt/style/app_text.dart';
import 'package:flutter/material.dart';

class Step1Widget extends StatefulWidget {
  @override
  _Step1WidgetState createState() => _Step1WidgetState();
}

class _Step1WidgetState extends State<Step1Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(AppDimens.small),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'pular',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: AppDimens.medium,
                      fontFamily: "WorkSansSemiBold"),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.gray,
                    size: AppDimens.medium,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(auth: Auth()),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        color: AppColors.white,
        padding:
            EdgeInsets.only(top: AppDimens.largest, bottom: AppDimens.small),
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
                  'assets/image/step1.jpg',
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
          ],
        ),
      ),
    );
  }
}
