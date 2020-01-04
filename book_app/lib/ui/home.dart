import 'package:book_app/ui/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Tortas",
    "Pães",
    "Massas",
    "Carnes",
    "Peixes",
    "Bolos",
    "Doces",
  ];

  List<String> title = ["Torta de Limão", "Torta de maça", "Torta de Abobora"];

  int _selectedIndex = 0;

  //tela cheia no emulador
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 42, left: 24),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Text(
                      "Busca",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Recomendados",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext c, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Chip(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            backgroundColor: index == _selectedIndex
                                ? Colors.blue
                                : Colors.grey[200],
                            label: Text(
                              categories.elementAt(index),
                              style: TextStyle(
                                color: index == _selectedIndex
                                    ? Colors.white
                                    : Colors.grey[700],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return BookWidget();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
