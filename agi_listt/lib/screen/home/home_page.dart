import 'package:agi_listt/service/auth/auth.dart';
import 'package:agi_listt/style/app_colors.dart';
import 'package:agi_listt/style/app_dimens.dart';
import 'package:agi_listt/style/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

  //final User snapshot;

  // const HomePage({Key key, @required this.snapshot}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // UserBloc bloc = UserBloc(UserRepository());
  //User snapshot;

  BaseAuth auth;
  VoidCallback onSignOut;

  void _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e);
    }
  }

  initState() {
    var snapshot;
    //bloc.getName(snapshot.name);
    super.initState();
  }

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
                  onPressed: _signOut),
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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            top: AppDimens.small,
            left: AppDimens.medium,
            right: AppDimens.smallest,
            bottom: AppDimens.small,
          ),
          child: CircleAvatar(
            backgroundColor: AppColors.greenLight,
            maxRadius: 4,
          ),
        ),
        title: Text(
          'Nome',
          style: TextStyle(color: AppColors.gray, fontSize: 16),
        ),
        backgroundColor: AppColors.white,
        elevation: 5.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: AppColors.gray,
              size: AppDimens.large,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    //   builder: (context) => LoginForm(),
                    ),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: 200,
        width: 400,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Nome'),
            ),

            /* StreamBuilder<String>(
                 stream: bloc.nameOut,
                   builder: (context, snapshot){
                     print(snapshot);
                     print(bloc.nameOut);
                   if (snapshot.hasData) {
                       return Text('${snapshot.data}');
                     }else if(snapshot.hasData){
                       return Text('${snapshot.hasError}');
                     }else{
                       return Text('erro generico');
                     } 
                 }),*/
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: AppTheme.splashGradientEnd,
        child: Icon(
          Icons.add,
          size: 28.0,
        ),
        tooltip: 'Adicionar Tarefa',
      ),
    );
  }
}
