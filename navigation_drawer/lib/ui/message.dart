import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mensagens"),
      ),
      body: Center(
        child: Text("Mensagens"),
      ),
    );
  }
}
