import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAN4oXfqMlImBJe4kZiEpYrnaVCA8r_M4zyfsPOvnS-k8KuGjU";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 240,
      margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Image.network(
              imageUrl,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 230,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Text("Torta de Limão"),
                  Text("A torta de limão é gostosa"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
