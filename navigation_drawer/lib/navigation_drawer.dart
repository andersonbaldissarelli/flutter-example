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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Perfil"),
              trailing: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Amigos"),
              trailing: Icon(Icons.people),
            ),
            ListTile(
              title: Text("Mapa"),
              trailing: Icon(Icons.map),
            ),
            ListTile(
              title: Text("Mensagens"),
              trailing: Icon(Icons.message),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                bottom: 5.0,
              ),
            ),
            ListTile(
              title: Text("Sair"),
              trailing: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
