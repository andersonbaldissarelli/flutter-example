import 'package:agi_listt/screen/home/home_page.dart';
import 'package:agi_listt/screen/register/register_page.dart';
import 'package:agi_listt/service/auth/auth.dart';
import 'package:agi_listt/style/app_colors.dart';
import 'package:agi_listt/style/app_dimens.dart';
import 'package:agi_listt/style/app_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({this.auth, this.onSignedIn});
  final BaseAuth auth;

  final VoidCallback onSignedIn;

  @override
  _LoginPageState createState() => _LoginPageState();
}

enum FormType {
  login,
  register,
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.only(
            top: AppDimens.topLogin,
            left: AppDimens.largest,
            right: AppDimens.largest,
          ),
          child: ListView(
            children: buildInputs() + buildSubmitButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      TextFormField(
        validator: (value) =>
            value.isEmpty ? 'Usuário não pode ser nulo' : null,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "E-mail",
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: AppColors.gray,
          )),
          labelStyle: TextStyle(
            color: AppColors.gray,
            fontSize: 16,
          ),
        ),
        style: TextStyle(fontSize: 16),
        onSaved: (value) => _email = value,
      ),
      SizedBox(
        height: 15,
      ),
      TextFormField(
        validator: (value) => value.isEmpty ? 'Senha não pode ser nulo' : null,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.gray,
            ),
          ),
          labelText: "Senha",
          labelStyle: TextStyle(
            color: AppColors.gray,
            fontSize: 16,
          ),
        ),
        style: TextStyle(fontSize: 16),
        onSaved: (value) => _password = value,
      ),
      SizedBox(
        height: 40,
      )
    ];
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == FormType.login) {
      return [
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
                    "Entrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    child: SizedBox(
                      child: Icon(Icons.account_circle,
                          size: 24, color: AppColors.white),
                      height: 28,
                      width: 28,
                    ),
                  ),
                ],
              ),
              onPressed: validateAndSubmit,
            ),
          ),
        ),
        SizedBox(
          height: 15,
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
                    "Criar uma conta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    child: SizedBox(
                      child: Icon(Icons.arrow_forward_ios,
                          size: 22, color: AppColors.white),
                      height: 28,
                      width: 28,
                    ),
                  ),
                ],
              ),
              onPressed: moveToRegister,
            ),
          ),
        ),
      ];
    } else {
      return [
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
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    child: SizedBox(
                      child: Icon(Icons.account_circle,
                          size: 24, color: AppColors.white),
                      height: 28,
                      width: 28,
                    ),
                  ),
                ],
              ),
              onPressed: validateAndSubmit,
            ),
          ),
        ),
        SizedBox(
          height: 15,
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
                    "Tem uma conta? Entrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    child: SizedBox(
                      child: Icon(Icons.arrow_forward_ios,
                          size: 22, color: AppColors.white),
                      height: 28,
                      width: 28,
                    ),
                  ),
                ],
              ),
              onPressed: moveToLogin,
            ),
          ),
        ),
      ];
    }
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    form.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if (_formType == FormType.login) {
          String userId =
              await widget.auth.signInWithEmailAndPassword(_email, _password);
          print('SignIn: $userId');
        } else {
          String userId = await widget.auth
              .createUserWithEmailAndPassword(_email, _password);

          print('Register: $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        print('Erro: $e');
      }
    }
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }
}
