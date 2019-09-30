import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer/ui/settings.dart';
import 'ui/profile.dart';
import 'ui/friends.dart';
import 'ui/message.dart';
import 'ui/map.dart';
import 'ui/settings.dart';
import 'ui/login.dart';

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
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Isadora Oliveira"),
              accountEmail: Text("oliveiraisadora119@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("IO"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Perfil"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              title: Text("Amigos"),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Friends()),
                );
              },
            ),
            ListTile(
              title: Text("Mapa"),
              leading: Icon(Icons.map),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map()),
                );
              },
            ),
            ListTile(
              title: Text("Mensagens"),
              leading: Icon(Icons.message),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
            ),
            ListTile(
              title: Text("Configuração"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                bottom: 5.0,
              ),
            ),
            ListTile(
              title: Text("Sair"),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
