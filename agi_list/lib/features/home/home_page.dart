import 'package:agi_list/core/const/app_colors.dart';
import 'package:agi_list/core/const/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  addTask() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Adicione sua tarefa:'),
            content: TextField(
              decoration: InputDecoration(),
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text(
                    'Sair',
                    style: TextStyle(color: AppColors.greenDark),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              FlatButton(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: AppColors.greenDark),
                  ),
                  onPressed: () {}),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: null),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: AppTheme.splashGradientEnd,
        child: Icon(
          Icons.add_location,
          size: 28.0,
        ),
        tooltip: 'Adicionar Tarefa',
      ),
    );
  }
}
