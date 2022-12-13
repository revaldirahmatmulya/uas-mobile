import 'package:flutter/material.dart';

@override
Card CardLayout(String text, String img) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Stack(fit: StackFit.expand, children: <Widget>[
      Image.network(img, fit: BoxFit.cover),
      Container(
        margin: EdgeInsets.only(left: 10, bottom: 10),
        alignment: Alignment.bottomLeft,
        child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.black12,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            )),
      )
    ]),
  );
}
