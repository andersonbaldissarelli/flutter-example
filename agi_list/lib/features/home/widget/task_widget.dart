import 'package:flutter/material.dart';

Card buildTask() {
  return Card(
    child: Container(
      height: 160.0,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 5.0, left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tarefa',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: "WorkSansSemiBold",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            "Deletar",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                            ),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                            "Feito",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
